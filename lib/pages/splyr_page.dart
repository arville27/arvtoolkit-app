import 'package:arvtoolkit/dto/model.dart';
import 'package:arvtoolkit/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplyrPage extends ConsumerStatefulWidget {
  const SplyrPage({super.key});

  @override
  ConsumerState<SplyrPage> createState() => _SplyrPageState();
}

class _SplyrPageState extends ConsumerState<SplyrPage> {
  final TextEditingController _queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        pinned: true,
        expandedHeight: 100.0,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: const EdgeInsets.only(left: 20, bottom: 16),
          title: Text(
            'Search Lyrics',
            style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          ),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        sliver: SliverList(
          delegate: SliverChildListDelegate.fixed([
            TextFormField(
              controller: _queryController,
              decoration: const InputDecoration(hintText: "Search here"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Submit"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchResultPage(query: _queryController.text);
                    },
                  ),
                );
              },
            ),
          ]),
        ),
      ),
    ]);
  }
}

class SearchResultPage extends ConsumerStatefulWidget {
  final String query;
  const SearchResultPage({super.key, required this.query});

  @override
  ConsumerState<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends ConsumerState<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    final searchResponse = ref.watch(searchProvider(query: widget.query));

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: switch (searchResponse) {
          AsyncData(:final value) => renderSearchResult(value),
          AsyncError(:final error) => Text('error: $error'),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }

  Widget renderSearchResult(SearchResponse searchResponse) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      itemCount: searchResponse.items.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          onTap: () {
            final route = MaterialPageRoute(
              builder: (context) {
                return LyricsResultPage(track: searchResponse.items[index]);
              },
            );
            Navigator.push(context, route);
          },
          leading: const Icon(Icons.music_note),
          title: Text(searchResponse.items[index].name),
          subtitle: Text(searchResponse.items[index].artists.join(", ")),
        ),
      ),
    );
  }
}

class LyricsResultPage extends ConsumerStatefulWidget {
  final SearchItem track;
  const LyricsResultPage({super.key, required this.track});

  @override
  ConsumerState<LyricsResultPage> createState() => _LyricsPageState();
}

class _LyricsPageState extends ConsumerState<LyricsResultPage> {
  @override
  Widget build(BuildContext context) {
    final lyricsResponse = ref.watch(lyricsProvider(trackId: widget.track.id));

    return Scaffold(
      appBar: AppBar(title: Text(widget.track.name)),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: switch (lyricsResponse) {
            AsyncData(:final value) => ListView.separated(
                itemCount: value.lyrics.lines.length,
                separatorBuilder: (context, index) => const SizedBox(height: 5),
                itemBuilder: (context, index) => Text(
                  value.lyrics.lines[index].words,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            AsyncError(:final error) => Text('error: $error'),
            _ => const Center(child: CircularProgressIndicator()),
          },
        ),
      ),
    );
  }
}
