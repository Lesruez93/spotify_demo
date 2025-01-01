import 'package:freezed_annotation/freezed_annotation.dart';

import '../album_image/album_image.dart';
import 'artist.dart';

part 'paginate_artist.freezed.dart';
part 'paginate_artist.g.dart';

@freezed
class PaginateArtist with _$PaginateArtist {
  const factory PaginateArtist({
    String? next,
    required List<Artist> items,


  }) = _PaginateArtist;

  factory PaginateArtist.fromJson(Map<String, dynamic> json) => _$PaginateArtistFromJson(json);
}

