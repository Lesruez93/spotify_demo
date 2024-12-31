// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      type: json['type'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => AlbumImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => AlbumArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'release_date': instance.releaseDate,
      'type': instance.type,
      'images': instance.images,
      'artists': instance.artists,
    };
