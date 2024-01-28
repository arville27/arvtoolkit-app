import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    required List<SearchItem> items,
    required int page,
    required int totalItems,
    required int maxPage,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, Object?> json) =>
      _$SearchResponseFromJson(json);
}

@freezed
class SearchItem with _$SearchItem {
  const factory SearchItem({
    required String id,
    required String name,
    required int durationMs,
    required String albumName,
    required List<String> artists,
  }) = _SearchItem;

  factory SearchItem.fromJson(Map<String, Object?> json) =>
      _$SearchItemFromJson(json);
}

@freezed
class LyricsResponse with _$LyricsResponse {
  const factory LyricsResponse({
    required LyricsContainer lyrics,
  }) = _LyricsResponse;

  factory LyricsResponse.fromJson(Map<String, Object?> json) =>
      _$LyricsResponseFromJson(json);
}

@freezed
class LyricsContainer with _$LyricsContainer {
  const factory LyricsContainer({
    required List<LyricsLine> lines,
  }) = _LyricsContainer;

  factory LyricsContainer.fromJson(Map<String, Object?> json) =>
      _$LyricsContainerFromJson(json);
}

@freezed
class LyricsLine with _$LyricsLine {
  const factory LyricsLine({required String words}) = _LyricsLine;

  factory LyricsLine.fromJson(Map<String, Object?> json) =>
      _$LyricsLineFromJson(json);
}
