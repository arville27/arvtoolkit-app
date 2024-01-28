// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return _SearchResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchResponse {
  List<SearchItem> get items => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get maxPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseCopyWith<SearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseCopyWith<$Res> {
  factory $SearchResponseCopyWith(
          SearchResponse value, $Res Function(SearchResponse) then) =
      _$SearchResponseCopyWithImpl<$Res, SearchResponse>;
  @useResult
  $Res call({List<SearchItem> items, int page, int totalItems, int maxPage});
}

/// @nodoc
class _$SearchResponseCopyWithImpl<$Res, $Val extends SearchResponse>
    implements $SearchResponseCopyWith<$Res> {
  _$SearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? page = null,
    Object? totalItems = null,
    Object? maxPage = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResponseImplCopyWith<$Res>
    implements $SearchResponseCopyWith<$Res> {
  factory _$$SearchResponseImplCopyWith(_$SearchResponseImpl value,
          $Res Function(_$SearchResponseImpl) then) =
      __$$SearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchItem> items, int page, int totalItems, int maxPage});
}

/// @nodoc
class __$$SearchResponseImplCopyWithImpl<$Res>
    extends _$SearchResponseCopyWithImpl<$Res, _$SearchResponseImpl>
    implements _$$SearchResponseImplCopyWith<$Res> {
  __$$SearchResponseImplCopyWithImpl(
      _$SearchResponseImpl _value, $Res Function(_$SearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? page = null,
    Object? totalItems = null,
    Object? maxPage = null,
  }) {
    return _then(_$SearchResponseImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResponseImpl implements _SearchResponse {
  const _$SearchResponseImpl(
      {required final List<SearchItem> items,
      required this.page,
      required this.totalItems,
      required this.maxPage})
      : _items = items;

  factory _$SearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResponseImplFromJson(json);

  final List<SearchItem> _items;
  @override
  List<SearchItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int page;
  @override
  final int totalItems;
  @override
  final int maxPage;

  @override
  String toString() {
    return 'SearchResponse(items: $items, page: $page, totalItems: $totalItems, maxPage: $maxPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), page, totalItems, maxPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResponseImplCopyWith<_$SearchResponseImpl> get copyWith =>
      __$$SearchResponseImplCopyWithImpl<_$SearchResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchResponse implements SearchResponse {
  const factory _SearchResponse(
      {required final List<SearchItem> items,
      required final int page,
      required final int totalItems,
      required final int maxPage}) = _$SearchResponseImpl;

  factory _SearchResponse.fromJson(Map<String, dynamic> json) =
      _$SearchResponseImpl.fromJson;

  @override
  List<SearchItem> get items;
  @override
  int get page;
  @override
  int get totalItems;
  @override
  int get maxPage;
  @override
  @JsonKey(ignore: true)
  _$$SearchResponseImplCopyWith<_$SearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchItem _$SearchItemFromJson(Map<String, dynamic> json) {
  return _SearchItem.fromJson(json);
}

/// @nodoc
mixin _$SearchItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get durationMs => throw _privateConstructorUsedError;
  String get albumName => throw _privateConstructorUsedError;
  List<String> get artists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchItemCopyWith<SearchItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchItemCopyWith<$Res> {
  factory $SearchItemCopyWith(
          SearchItem value, $Res Function(SearchItem) then) =
      _$SearchItemCopyWithImpl<$Res, SearchItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      int durationMs,
      String albumName,
      List<String> artists});
}

/// @nodoc
class _$SearchItemCopyWithImpl<$Res, $Val extends SearchItem>
    implements $SearchItemCopyWith<$Res> {
  _$SearchItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? durationMs = null,
    Object? albumName = null,
    Object? artists = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      albumName: null == albumName
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchItemImplCopyWith<$Res>
    implements $SearchItemCopyWith<$Res> {
  factory _$$SearchItemImplCopyWith(
          _$SearchItemImpl value, $Res Function(_$SearchItemImpl) then) =
      __$$SearchItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int durationMs,
      String albumName,
      List<String> artists});
}

/// @nodoc
class __$$SearchItemImplCopyWithImpl<$Res>
    extends _$SearchItemCopyWithImpl<$Res, _$SearchItemImpl>
    implements _$$SearchItemImplCopyWith<$Res> {
  __$$SearchItemImplCopyWithImpl(
      _$SearchItemImpl _value, $Res Function(_$SearchItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? durationMs = null,
    Object? albumName = null,
    Object? artists = null,
  }) {
    return _then(_$SearchItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      albumName: null == albumName
          ? _value.albumName
          : albumName // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchItemImpl implements _SearchItem {
  const _$SearchItemImpl(
      {required this.id,
      required this.name,
      required this.durationMs,
      required this.albumName,
      required final List<String> artists})
      : _artists = artists;

  factory _$SearchItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int durationMs;
  @override
  final String albumName;
  final List<String> _artists;
  @override
  List<String> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  String toString() {
    return 'SearchItem(id: $id, name: $name, durationMs: $durationMs, albumName: $albumName, artists: $artists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.albumName, albumName) ||
                other.albumName == albumName) &&
            const DeepCollectionEquality().equals(other._artists, _artists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, durationMs, albumName,
      const DeepCollectionEquality().hash(_artists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchItemImplCopyWith<_$SearchItemImpl> get copyWith =>
      __$$SearchItemImplCopyWithImpl<_$SearchItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchItemImplToJson(
      this,
    );
  }
}

abstract class _SearchItem implements SearchItem {
  const factory _SearchItem(
      {required final String id,
      required final String name,
      required final int durationMs,
      required final String albumName,
      required final List<String> artists}) = _$SearchItemImpl;

  factory _SearchItem.fromJson(Map<String, dynamic> json) =
      _$SearchItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get durationMs;
  @override
  String get albumName;
  @override
  List<String> get artists;
  @override
  @JsonKey(ignore: true)
  _$$SearchItemImplCopyWith<_$SearchItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LyricsResponse _$LyricsResponseFromJson(Map<String, dynamic> json) {
  return _LyricsResponse.fromJson(json);
}

/// @nodoc
mixin _$LyricsResponse {
  LyricsContainer get lyrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LyricsResponseCopyWith<LyricsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricsResponseCopyWith<$Res> {
  factory $LyricsResponseCopyWith(
          LyricsResponse value, $Res Function(LyricsResponse) then) =
      _$LyricsResponseCopyWithImpl<$Res, LyricsResponse>;
  @useResult
  $Res call({LyricsContainer lyrics});

  $LyricsContainerCopyWith<$Res> get lyrics;
}

/// @nodoc
class _$LyricsResponseCopyWithImpl<$Res, $Val extends LyricsResponse>
    implements $LyricsResponseCopyWith<$Res> {
  _$LyricsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lyrics = null,
  }) {
    return _then(_value.copyWith(
      lyrics: null == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as LyricsContainer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LyricsContainerCopyWith<$Res> get lyrics {
    return $LyricsContainerCopyWith<$Res>(_value.lyrics, (value) {
      return _then(_value.copyWith(lyrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LyricsResponseImplCopyWith<$Res>
    implements $LyricsResponseCopyWith<$Res> {
  factory _$$LyricsResponseImplCopyWith(_$LyricsResponseImpl value,
          $Res Function(_$LyricsResponseImpl) then) =
      __$$LyricsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LyricsContainer lyrics});

  @override
  $LyricsContainerCopyWith<$Res> get lyrics;
}

/// @nodoc
class __$$LyricsResponseImplCopyWithImpl<$Res>
    extends _$LyricsResponseCopyWithImpl<$Res, _$LyricsResponseImpl>
    implements _$$LyricsResponseImplCopyWith<$Res> {
  __$$LyricsResponseImplCopyWithImpl(
      _$LyricsResponseImpl _value, $Res Function(_$LyricsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lyrics = null,
  }) {
    return _then(_$LyricsResponseImpl(
      lyrics: null == lyrics
          ? _value.lyrics
          : lyrics // ignore: cast_nullable_to_non_nullable
              as LyricsContainer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LyricsResponseImpl implements _LyricsResponse {
  const _$LyricsResponseImpl({required this.lyrics});

  factory _$LyricsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LyricsResponseImplFromJson(json);

  @override
  final LyricsContainer lyrics;

  @override
  String toString() {
    return 'LyricsResponse(lyrics: $lyrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LyricsResponseImpl &&
            (identical(other.lyrics, lyrics) || other.lyrics == lyrics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lyrics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LyricsResponseImplCopyWith<_$LyricsResponseImpl> get copyWith =>
      __$$LyricsResponseImplCopyWithImpl<_$LyricsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LyricsResponseImplToJson(
      this,
    );
  }
}

abstract class _LyricsResponse implements LyricsResponse {
  const factory _LyricsResponse({required final LyricsContainer lyrics}) =
      _$LyricsResponseImpl;

  factory _LyricsResponse.fromJson(Map<String, dynamic> json) =
      _$LyricsResponseImpl.fromJson;

  @override
  LyricsContainer get lyrics;
  @override
  @JsonKey(ignore: true)
  _$$LyricsResponseImplCopyWith<_$LyricsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LyricsContainer _$LyricsContainerFromJson(Map<String, dynamic> json) {
  return _LyricsContainer.fromJson(json);
}

/// @nodoc
mixin _$LyricsContainer {
  List<LyricsLine> get lines => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LyricsContainerCopyWith<LyricsContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricsContainerCopyWith<$Res> {
  factory $LyricsContainerCopyWith(
          LyricsContainer value, $Res Function(LyricsContainer) then) =
      _$LyricsContainerCopyWithImpl<$Res, LyricsContainer>;
  @useResult
  $Res call({List<LyricsLine> lines});
}

/// @nodoc
class _$LyricsContainerCopyWithImpl<$Res, $Val extends LyricsContainer>
    implements $LyricsContainerCopyWith<$Res> {
  _$LyricsContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
  }) {
    return _then(_value.copyWith(
      lines: null == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<LyricsLine>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LyricsContainerImplCopyWith<$Res>
    implements $LyricsContainerCopyWith<$Res> {
  factory _$$LyricsContainerImplCopyWith(_$LyricsContainerImpl value,
          $Res Function(_$LyricsContainerImpl) then) =
      __$$LyricsContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LyricsLine> lines});
}

/// @nodoc
class __$$LyricsContainerImplCopyWithImpl<$Res>
    extends _$LyricsContainerCopyWithImpl<$Res, _$LyricsContainerImpl>
    implements _$$LyricsContainerImplCopyWith<$Res> {
  __$$LyricsContainerImplCopyWithImpl(
      _$LyricsContainerImpl _value, $Res Function(_$LyricsContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lines = null,
  }) {
    return _then(_$LyricsContainerImpl(
      lines: null == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<LyricsLine>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LyricsContainerImpl implements _LyricsContainer {
  const _$LyricsContainerImpl({required final List<LyricsLine> lines})
      : _lines = lines;

  factory _$LyricsContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$LyricsContainerImplFromJson(json);

  final List<LyricsLine> _lines;
  @override
  List<LyricsLine> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  String toString() {
    return 'LyricsContainer(lines: $lines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LyricsContainerImpl &&
            const DeepCollectionEquality().equals(other._lines, _lines));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LyricsContainerImplCopyWith<_$LyricsContainerImpl> get copyWith =>
      __$$LyricsContainerImplCopyWithImpl<_$LyricsContainerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LyricsContainerImplToJson(
      this,
    );
  }
}

abstract class _LyricsContainer implements LyricsContainer {
  const factory _LyricsContainer({required final List<LyricsLine> lines}) =
      _$LyricsContainerImpl;

  factory _LyricsContainer.fromJson(Map<String, dynamic> json) =
      _$LyricsContainerImpl.fromJson;

  @override
  List<LyricsLine> get lines;
  @override
  @JsonKey(ignore: true)
  _$$LyricsContainerImplCopyWith<_$LyricsContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LyricsLine _$LyricsLineFromJson(Map<String, dynamic> json) {
  return _LyricsLine.fromJson(json);
}

/// @nodoc
mixin _$LyricsLine {
  String get words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LyricsLineCopyWith<LyricsLine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricsLineCopyWith<$Res> {
  factory $LyricsLineCopyWith(
          LyricsLine value, $Res Function(LyricsLine) then) =
      _$LyricsLineCopyWithImpl<$Res, LyricsLine>;
  @useResult
  $Res call({String words});
}

/// @nodoc
class _$LyricsLineCopyWithImpl<$Res, $Val extends LyricsLine>
    implements $LyricsLineCopyWith<$Res> {
  _$LyricsLineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LyricsLineImplCopyWith<$Res>
    implements $LyricsLineCopyWith<$Res> {
  factory _$$LyricsLineImplCopyWith(
          _$LyricsLineImpl value, $Res Function(_$LyricsLineImpl) then) =
      __$$LyricsLineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String words});
}

/// @nodoc
class __$$LyricsLineImplCopyWithImpl<$Res>
    extends _$LyricsLineCopyWithImpl<$Res, _$LyricsLineImpl>
    implements _$$LyricsLineImplCopyWith<$Res> {
  __$$LyricsLineImplCopyWithImpl(
      _$LyricsLineImpl _value, $Res Function(_$LyricsLineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
  }) {
    return _then(_$LyricsLineImpl(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LyricsLineImpl implements _LyricsLine {
  const _$LyricsLineImpl({required this.words});

  factory _$LyricsLineImpl.fromJson(Map<String, dynamic> json) =>
      _$$LyricsLineImplFromJson(json);

  @override
  final String words;

  @override
  String toString() {
    return 'LyricsLine(words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LyricsLineImpl &&
            (identical(other.words, words) || other.words == words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, words);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LyricsLineImplCopyWith<_$LyricsLineImpl> get copyWith =>
      __$$LyricsLineImplCopyWithImpl<_$LyricsLineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LyricsLineImplToJson(
      this,
    );
  }
}

abstract class _LyricsLine implements LyricsLine {
  const factory _LyricsLine({required final String words}) = _$LyricsLineImpl;

  factory _LyricsLine.fromJson(Map<String, dynamic> json) =
      _$LyricsLineImpl.fromJson;

  @override
  String get words;
  @override
  @JsonKey(ignore: true)
  _$$LyricsLineImplCopyWith<_$LyricsLineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
