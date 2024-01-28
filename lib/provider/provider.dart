import 'package:arvtoolkit/dto/model.dart';
import 'package:arvtoolkit/repository/settings_repository.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
Dio dioInstance(DioInstanceRef ref) {
  return Dio();
}

@riverpod
Future<SearchResponse> search(SearchRef ref, {required String query}) async {
  final arvtoolkitApi = ref
      .watch(settingsRepositoryProvider.select((value) => value.arvtoolkitApi));
  // final arvtoolkitApi = "https://arvtoolkit.local.arv.cx";
  final response =
      await ref.read(dioInstanceProvider).get("$arvtoolkitApi/splyr?q=$query");
  final result = SearchResponse.fromJson(response.data);
  return result;
}

@riverpod
Future<LyricsResponse> lyrics(LyricsRef ref, {required String trackId}) async {
  final arvtoolkitApi = ref
      .watch(settingsRepositoryProvider.select((value) => value.arvtoolkitApi));
  // final arvtoolkitApi = "https://arvtoolkit.local.arv.cx";
  final response =
      await ref.read(dioInstanceProvider).get("$arvtoolkitApi/splyr/$trackId");
  final result = LyricsResponse.fromJson(response.data);
  return result;
}
