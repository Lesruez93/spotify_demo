// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlbumArtist _$AlbumArtistFromJson(Map<String, dynamic> json) {
  return _AlbumArtist.fromJson(json);
}

/// @nodoc
mixin _$AlbumArtist {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get uri => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  Map<String, String> get externalUrls => throw _privateConstructorUsedError;

  /// Serializes this AlbumArtist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumArtistCopyWith<AlbumArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumArtistCopyWith<$Res> {
  factory $AlbumArtistCopyWith(
          AlbumArtist value, $Res Function(AlbumArtist) then) =
      _$AlbumArtistCopyWithImpl<$Res, AlbumArtist>;
  @useResult
  $Res call(
      {String name,
      String type,
      String uri,
      String id,
      @JsonKey(name: 'external_urls') Map<String, String> externalUrls});
}

/// @nodoc
class _$AlbumArtistCopyWithImpl<$Res, $Val extends AlbumArtist>
    implements $AlbumArtistCopyWith<$Res> {
  _$AlbumArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? uri = null,
    Object? id = null,
    Object? externalUrls = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumArtistImplCopyWith<$Res>
    implements $AlbumArtistCopyWith<$Res> {
  factory _$$AlbumArtistImplCopyWith(
          _$AlbumArtistImpl value, $Res Function(_$AlbumArtistImpl) then) =
      __$$AlbumArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      String uri,
      String id,
      @JsonKey(name: 'external_urls') Map<String, String> externalUrls});
}

/// @nodoc
class __$$AlbumArtistImplCopyWithImpl<$Res>
    extends _$AlbumArtistCopyWithImpl<$Res, _$AlbumArtistImpl>
    implements _$$AlbumArtistImplCopyWith<$Res> {
  __$$AlbumArtistImplCopyWithImpl(
      _$AlbumArtistImpl _value, $Res Function(_$AlbumArtistImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? uri = null,
    Object? id = null,
    Object? externalUrls = null,
  }) {
    return _then(_$AlbumArtistImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrls: null == externalUrls
          ? _value._externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumArtistImpl implements _AlbumArtist {
  const _$AlbumArtistImpl(
      {required this.name,
      required this.type,
      required this.uri,
      required this.id,
      @JsonKey(name: 'external_urls')
      required final Map<String, String> externalUrls})
      : _externalUrls = externalUrls;

  factory _$AlbumArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumArtistImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final String uri;
  @override
  final String id;
  final Map<String, String> _externalUrls;
  @override
  @JsonKey(name: 'external_urls')
  Map<String, String> get externalUrls {
    if (_externalUrls is EqualUnmodifiableMapView) return _externalUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_externalUrls);
  }

  @override
  String toString() {
    return 'AlbumArtist(name: $name, type: $type, uri: $uri, id: $id, externalUrls: $externalUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumArtistImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._externalUrls, _externalUrls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, uri, id,
      const DeepCollectionEquality().hash(_externalUrls));

  /// Create a copy of AlbumArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumArtistImplCopyWith<_$AlbumArtistImpl> get copyWith =>
      __$$AlbumArtistImplCopyWithImpl<_$AlbumArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumArtistImplToJson(
      this,
    );
  }
}

abstract class _AlbumArtist implements AlbumArtist {
  const factory _AlbumArtist(
      {required final String name,
      required final String type,
      required final String uri,
      required final String id,
      @JsonKey(name: 'external_urls')
      required final Map<String, String> externalUrls}) = _$AlbumArtistImpl;

  factory _AlbumArtist.fromJson(Map<String, dynamic> json) =
      _$AlbumArtistImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String get uri;
  @override
  String get id;
  @override
  @JsonKey(name: 'external_urls')
  Map<String, String> get externalUrls;

  /// Create a copy of AlbumArtist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumArtistImplCopyWith<_$AlbumArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
