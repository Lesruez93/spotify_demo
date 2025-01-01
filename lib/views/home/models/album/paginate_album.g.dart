// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginate_album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginateAlbumImpl _$$PaginateAlbumImplFromJson(Map<String, dynamic> json) =>
    _$PaginateAlbumImpl(
      next: json['next'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Album.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaginateAlbumImplToJson(_$PaginateAlbumImpl instance) =>
    <String, dynamic>{
      'next': instance.next,
      'items': instance.items,
    };
