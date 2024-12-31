import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_demo/views/home/models/album_image.dart';


import 'artist.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {
  const factory Album({
    required String name,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'release_date_precision') required String releaseDatePrecision,
    required String type,
    required String uri,
    required List<AlbumImage> images,
    required List<Artist> artists,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

