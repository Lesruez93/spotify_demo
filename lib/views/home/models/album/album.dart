import 'package:freezed_annotation/freezed_annotation.dart';

import '../album_artist/album_artist.dart';
import '../album_image/album_image.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {
  const factory Album({
    required String name,
    required String releaseDate,
    required String releaseDatePrecision,
    required String type,
    required String uri,
    required List<AlbumImage> images,
    required List<AlbumArtist> artists,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

