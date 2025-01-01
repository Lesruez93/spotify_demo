// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginate_artist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginateArtist _$PaginateArtistFromJson(Map<String, dynamic> json) {
  return _PaginateArtist.fromJson(json);
}

/// @nodoc
mixin _$PaginateArtist {
  String? get next => throw _privateConstructorUsedError;
  List<Artist> get items => throw _privateConstructorUsedError;

  /// Serializes this PaginateArtist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginateArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginateArtistCopyWith<PaginateArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginateArtistCopyWith<$Res> {
  factory $PaginateArtistCopyWith(
          PaginateArtist value, $Res Function(PaginateArtist) then) =
      _$PaginateArtistCopyWithImpl<$Res, PaginateArtist>;
  @useResult
  $Res call({String? next, List<Artist> items});
}

/// @nodoc
class _$PaginateArtistCopyWithImpl<$Res, $Val extends PaginateArtist>
    implements $PaginateArtistCopyWith<$Res> {
  _$PaginateArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginateArtist
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
              as List<Artist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginateArtistImplCopyWith<$Res>
    implements $PaginateArtistCopyWith<$Res> {
  factory _$$PaginateArtistImplCopyWith(_$PaginateArtistImpl value,
          $Res Function(_$PaginateArtistImpl) then) =
      __$$PaginateArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? next, List<Artist> items});
}

/// @nodoc
class __$$PaginateArtistImplCopyWithImpl<$Res>
    extends _$PaginateArtistCopyWithImpl<$Res, _$PaginateArtistImpl>
    implements _$$PaginateArtistImplCopyWith<$Res> {
  __$$PaginateArtistImplCopyWithImpl(
      _$PaginateArtistImpl _value, $Res Function(_$PaginateArtistImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginateArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? items = null,
  }) {
    return _then(_$PaginateArtistImpl(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginateArtistImpl implements _PaginateArtist {
  const _$PaginateArtistImpl({this.next, required final List<Artist> items})
      : _items = items;

  factory _$PaginateArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginateArtistImplFromJson(json);

  @override
  final String? next;
  final List<Artist> _items;
  @override
  List<Artist> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PaginateArtist(next: $next, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginateArtistImpl &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, next, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PaginateArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginateArtistImplCopyWith<_$PaginateArtistImpl> get copyWith =>
      __$$PaginateArtistImplCopyWithImpl<_$PaginateArtistImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginateArtistImplToJson(
      this,
    );
  }
}

abstract class _PaginateArtist implements PaginateArtist {
  const factory _PaginateArtist(
      {final String? next,
      required final List<Artist> items}) = _$PaginateArtistImpl;

  factory _PaginateArtist.fromJson(Map<String, dynamic> json) =
      _$PaginateArtistImpl.fromJson;

  @override
  String? get next;
  @override
  List<Artist> get items;

  /// Create a copy of PaginateArtist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginateArtistImplCopyWith<_$PaginateArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
