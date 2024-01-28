// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioInstanceHash() => r'784841bd7ad3871e283a127ab96f38c60fca8394';

/// See also [dioInstance].
@ProviderFor(dioInstance)
final dioInstanceProvider = AutoDisposeProvider<Dio>.internal(
  dioInstance,
  name: r'dioInstanceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioInstanceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioInstanceRef = AutoDisposeProviderRef<Dio>;
String _$searchHash() => r'4c056baa4bc27dccc46231e449f3dea19db9a9cd';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [search].
@ProviderFor(search)
const searchProvider = SearchFamily();

/// See also [search].
class SearchFamily extends Family<AsyncValue<SearchResponse>> {
  /// See also [search].
  const SearchFamily();

  /// See also [search].
  SearchProvider call({
    required String query,
  }) {
    return SearchProvider(
      query: query,
    );
  }

  @override
  SearchProvider getProviderOverride(
    covariant SearchProvider provider,
  ) {
    return call(
      query: provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchProvider';
}

/// See also [search].
class SearchProvider extends AutoDisposeFutureProvider<SearchResponse> {
  /// See also [search].
  SearchProvider({
    required String query,
  }) : this._internal(
          (ref) => search(
            ref as SearchRef,
            query: query,
          ),
          from: searchProvider,
          name: r'searchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHash,
          dependencies: SearchFamily._dependencies,
          allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
          query: query,
        );

  SearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<SearchResponse> Function(SearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchProvider._internal(
        (ref) => create(ref as SearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SearchResponse> createElement() {
    return _SearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchRef on AutoDisposeFutureProviderRef<SearchResponse> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchProviderElement
    extends AutoDisposeFutureProviderElement<SearchResponse> with SearchRef {
  _SearchProviderElement(super.provider);

  @override
  String get query => (origin as SearchProvider).query;
}

String _$lyricsHash() => r'8da65d386f5b9c6637016e42bb2b7c997b553482';

/// See also [lyrics].
@ProviderFor(lyrics)
const lyricsProvider = LyricsFamily();

/// See also [lyrics].
class LyricsFamily extends Family<AsyncValue<LyricsResponse>> {
  /// See also [lyrics].
  const LyricsFamily();

  /// See also [lyrics].
  LyricsProvider call({
    required String trackId,
  }) {
    return LyricsProvider(
      trackId: trackId,
    );
  }

  @override
  LyricsProvider getProviderOverride(
    covariant LyricsProvider provider,
  ) {
    return call(
      trackId: provider.trackId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'lyricsProvider';
}

/// See also [lyrics].
class LyricsProvider extends AutoDisposeFutureProvider<LyricsResponse> {
  /// See also [lyrics].
  LyricsProvider({
    required String trackId,
  }) : this._internal(
          (ref) => lyrics(
            ref as LyricsRef,
            trackId: trackId,
          ),
          from: lyricsProvider,
          name: r'lyricsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lyricsHash,
          dependencies: LyricsFamily._dependencies,
          allTransitiveDependencies: LyricsFamily._allTransitiveDependencies,
          trackId: trackId,
        );

  LyricsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.trackId,
  }) : super.internal();

  final String trackId;

  @override
  Override overrideWith(
    FutureOr<LyricsResponse> Function(LyricsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LyricsProvider._internal(
        (ref) => create(ref as LyricsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        trackId: trackId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<LyricsResponse> createElement() {
    return _LyricsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LyricsProvider && other.trackId == trackId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, trackId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LyricsRef on AutoDisposeFutureProviderRef<LyricsResponse> {
  /// The parameter `trackId` of this provider.
  String get trackId;
}

class _LyricsProviderElement
    extends AutoDisposeFutureProviderElement<LyricsResponse> with LyricsRef {
  _LyricsProviderElement(super.provider);

  @override
  String get trackId => (origin as LyricsProvider).trackId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
