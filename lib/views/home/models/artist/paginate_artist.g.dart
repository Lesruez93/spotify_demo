// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginate_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginateArtistImpl _$$PaginateArtistImplFromJson(Map<String, dynamic> json) =>
    _$PaginateArtistImpl(
      next: json['next'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaginateArtistImplToJson(
        _$PaginateArtistImpl instance) =>
    <String, dynamic>{
      'next': instance.next,
      'items': instance.items,
    };
