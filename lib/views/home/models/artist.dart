import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';


@freezed
class Artist with _$Artist {
  const factory Artist({
    required String name,
    required String type,
    required String uri,
    required String id,
    @JsonKey(name: 'external_urls') required Map<String, String> externalUrls,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}
