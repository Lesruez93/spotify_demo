// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_artist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumArtistImpl _$$AlbumArtistImplFromJson(Map<String, dynamic> json) =>
    _$AlbumArtistImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      uri: json['uri'] as String,
      id: json['id'] as String,
      externalUrls: Map<String, String>.from(json['external_urls'] as Map),
    );

Map<String, dynamic> _$$AlbumArtistImplToJson(_$AlbumArtistImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
      'id': instance.id,
      'external_urls': instance.externalUrls,
    };
