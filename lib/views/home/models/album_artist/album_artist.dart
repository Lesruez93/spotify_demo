import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_artist.freezed.dart';
part 'album_artist.g.dart';


@freezed
class AlbumArtist with _$AlbumArtist {
  const factory AlbumArtist({
    required String name,
    required String type,
    required String uri,
    required String id,
    @JsonKey(name: 'external_urls') required Map<String, String> externalUrls,
  }) = _AlbumArtist;

  factory AlbumArtist.fromJson(Map<String, dynamic> json) => _$AlbumArtistFromJson(json);
}
