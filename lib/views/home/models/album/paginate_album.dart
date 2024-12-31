import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spotify_demo/views/home/models/album/album.dart';

import '../album_artist/album_artist.dart';
import '../album_image/album_image.dart';

part 'paginate_album.freezed.dart';
part 'paginate_album.g.dart';

@freezed
class PaginateAlbum with _$PaginateAlbum {
  const factory PaginateAlbum({
     String? next,
     required List<Album> items,
   
  }) = _PaginateAlbum;

  factory PaginateAlbum.fromJson(Map<String, dynamic> json) => _$PaginateAlbumFromJson(json);
}

