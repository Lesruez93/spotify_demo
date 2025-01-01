// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginate_album.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginateAlbum _$PaginateAlbumFromJson(Map<String, dynamic> json) {
  return _PaginateAlbum.fromJson(json);
}

/// @nodoc
mixin _$PaginateAlbum {
  String? get next => throw _privateConstructorUsedError;
  List<Album> get items => throw _privateConstructorUsedError;

  /// Serializes this PaginateAlbum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginateAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginateAlbumCopyWith<PaginateAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginateAlbumCopyWith<$Res> {
  factory $PaginateAlbumCopyWith(
          PaginateAlbum value, $Res Function(PaginateAlbum) then) =
      _$PaginateAlbumCopyWithImpl<$Res, PaginateAlbum>;
  @useResult
  $Res call({String? next, List<Album> items});
}

/// @nodoc
class _$PaginateAlbumCopyWithImpl<$Res, $Val extends PaginateAlbum>
    implements $PaginateAlbumCopyWith<$Res> {
  _$PaginateAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginateAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Album>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginateAlbumImplCopyWith<$Res>
    implements $PaginateAlbumCopyWith<$Res> {
  factory _$$PaginateAlbumImplCopyWith(
          _$PaginateAlbumImpl value, $Res Function(_$PaginateAlbumImpl) then) =
      __$$PaginateAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? next, List<Album> items});
}

/// @nodoc
class __$$PaginateAlbumImplCopyWithImpl<$Res>
    extends _$PaginateAlbumCopyWithImpl<$Res, _$PaginateAlbumImpl>
    implements _$$PaginateAlbumImplCopyWith<$Res> {
  __$$PaginateAlbumImplCopyWithImpl(
      _$PaginateAlbumImpl _value, $Res Function(_$PaginateAlbumImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginateAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? items = null,
  }) {
    return _then(_$PaginateAlbumImpl(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Album>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginateAlbumImpl implements _PaginateAlbum {
  const _$PaginateAlbumImpl({this.next, required final List<Album> items})
      : _items = items;

  factory _$PaginateAlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginateAlbumImplFromJson(json);

  @override
  final String? next;
  final List<Album> _items;
  @override
  List<Album> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PaginateAlbum(next: $next, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateAlbumImpl &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, next, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PaginateAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateAlbumImplCopyWith<_$PaginateAlbumImpl> get copyWith =>
      __$$PaginateAlbumImplCopyWithImpl<_$PaginateAlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginateAlbumImplToJson(
      this,
    );
  }
}

abstract class _PaginateAlbum implements PaginateAlbum {
  const factory _PaginateAlbum(
      {final String? next,
      required final List<Album> items}) = _$PaginateAlbumImpl;

  factory _PaginateAlbum.fromJson(Map<String, dynamic> json) =
      _$PaginateAlbumImpl.fromJson;

  @override
  String? get next;
  @override
  List<Album> get items;

  /// Create a copy of PaginateAlbum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginateAlbumImplCopyWith<_$PaginateAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
