// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlbumImage _$AlbumImageFromJson(Map<String, dynamic> json) {
  return _AlbumImage.fromJson(json);
}

/// @nodoc
mixin _$AlbumImage {
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  /// Serializes this AlbumImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlbumImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlbumImageCopyWith<AlbumImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumImageCopyWith<$Res> {
  factory $AlbumImageCopyWith(
          AlbumImage value, $Res Function(AlbumImage) then) =
      _$AlbumImageCopyWithImpl<$Res, AlbumImage>;
  @useResult
  $Res call({int height, String url, int width});
}

/// @nodoc
class _$AlbumImageCopyWithImpl<$Res, $Val extends AlbumImage>
    implements $AlbumImageCopyWith<$Res> {
  _$AlbumImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlbumImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumImageImplCopyWith<$Res>
    implements $AlbumImageCopyWith<$Res> {
  factory _$$AlbumImageImplCopyWith(
          _$AlbumImageImpl value, $Res Function(_$AlbumImageImpl) then) =
      __$$AlbumImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, String url, int width});
}

/// @nodoc
class __$$AlbumImageImplCopyWithImpl<$Res>
    extends _$AlbumImageCopyWithImpl<$Res, _$AlbumImageImpl>
    implements _$$AlbumImageImplCopyWith<$Res> {
  __$$AlbumImageImplCopyWithImpl(
      _$AlbumImageImpl _value, $Res Function(_$AlbumImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlbumImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_$AlbumImageImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumImageImpl implements _AlbumImage {
  const _$AlbumImageImpl(
      {required this.height, required this.url, required this.width});

  factory _$AlbumImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImageImplFromJson(json);

  @override
  final int height;
  @override
  final String url;
  @override
  final int width;

  @override
  String toString() {
    return 'AlbumImage(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImageImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, height, url, width);

  /// Create a copy of AlbumImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumImageImplCopyWith<_$AlbumImageImpl> get copyWith =>
      __$$AlbumImageImplCopyWithImpl<_$AlbumImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImageImplToJson(
      this,
    );
  }
}

abstract class _AlbumImage implements AlbumImage {
  const factory _AlbumImage(
      {required final int height,
      required final String url,
      required final int width}) = _$AlbumImageImpl;

  factory _AlbumImage.fromJson(Map<String, dynamic> json) =
      _$AlbumImageImpl.fromJson;

  @override
  int get height;
  @override
  String get url;
  @override
  int get width;

  /// Create a copy of AlbumImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlbumImageImplCopyWith<_$AlbumImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
