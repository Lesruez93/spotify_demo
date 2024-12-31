import 'package:freezed_annotation/freezed_annotation.dart';

import '../album_image/album_image.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  const factory Artist({
    required String name,
    required List<AlbumImage> images,

  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

