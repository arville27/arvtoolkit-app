// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResponseImpl _$$SearchResponseImplFromJson(Map<String, dynamic> json) =>
    _$SearchResponseImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int,
      totalItems: json['totalItems'] as int,
      maxPage: json['maxPage'] as int,
    );

Map<String, dynamic> _$$SearchResponseImplToJson(
        _$SearchResponseImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'totalItems': instance.totalItems,
      'maxPage': instance.maxPage,
    };

_$SearchItemImpl _$$SearchItemImplFromJson(Map<String, dynamic> json) =>
    _$SearchItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      durationMs: json['durationMs'] as int,
      albumName: json['albumName'] as String,
      artists:
          (json['artists'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SearchItemImplToJson(_$SearchItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'durationMs': instance.durationMs,
      'albumName': instance.albumName,
      'artists': instance.artists,
    };

_$LyricsResponseImpl _$$LyricsResponseImplFromJson(Map<String, dynamic> json) =>
    _$LyricsResponseImpl(
      lyrics: LyricsContainer.fromJson(json['lyrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LyricsResponseImplToJson(
        _$LyricsResponseImpl instance) =>
    <String, dynamic>{
      'lyrics': instance.lyrics,
    };

_$LyricsContainerImpl _$$LyricsContainerImplFromJson(
        Map<String, dynamic> json) =>
    _$LyricsContainerImpl(
      lines: (json['lines'] as List<dynamic>)
          .map((e) => LyricsLine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LyricsContainerImplToJson(
        _$LyricsContainerImpl instance) =>
    <String, dynamic>{
      'lines': instance.lines,
    };

_$LyricsLineImpl _$$LyricsLineImplFromJson(Map<String, dynamic> json) =>
    _$LyricsLineImpl(
      words: json['words'] as String,
    );

Map<String, dynamic> _$$LyricsLineImplToJson(_$LyricsLineImpl instance) =>
    <String, dynamic>{
      'words': instance.words,
    };
