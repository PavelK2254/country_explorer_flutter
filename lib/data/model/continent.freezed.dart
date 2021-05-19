// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'continent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Continent _$ContinentFromJson(Map<String, dynamic> json) {
  return _Continent.fromJson(json);
}

/// @nodoc
class _$ContinentTearOff {
  const _$ContinentTearOff();

  _Continent call({required String code, required String name}) {
    return _Continent(
      code: code,
      name: name,
    );
  }

  Continent fromJson(Map<String, Object> json) {
    return Continent.fromJson(json);
  }
}

/// @nodoc
const $Continent = _$ContinentTearOff();

/// @nodoc
mixin _$Continent {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContinentCopyWith<Continent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinentCopyWith<$Res> {
  factory $ContinentCopyWith(Continent value, $Res Function(Continent) then) =
      _$ContinentCopyWithImpl<$Res>;
  $Res call({String code, String name});
}

/// @nodoc
class _$ContinentCopyWithImpl<$Res> implements $ContinentCopyWith<$Res> {
  _$ContinentCopyWithImpl(this._value, this._then);

  final Continent _value;
  // ignore: unused_field
  final $Res Function(Continent) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ContinentCopyWith<$Res> implements $ContinentCopyWith<$Res> {
  factory _$ContinentCopyWith(
          _Continent value, $Res Function(_Continent) then) =
      __$ContinentCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name});
}

/// @nodoc
class __$ContinentCopyWithImpl<$Res> extends _$ContinentCopyWithImpl<$Res>
    implements _$ContinentCopyWith<$Res> {
  __$ContinentCopyWithImpl(_Continent _value, $Res Function(_Continent) _then)
      : super(_value, (v) => _then(v as _Continent));

  @override
  _Continent get _value => super._value as _Continent;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_Continent(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Continent implements _Continent {
  _$_Continent({required this.code, required this.name});

  factory _$_Continent.fromJson(Map<String, dynamic> json) =>
      _$_$_ContinentFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'Continent(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Continent &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ContinentCopyWith<_Continent> get copyWith =>
      __$ContinentCopyWithImpl<_Continent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ContinentToJson(this);
  }
}

abstract class _Continent implements Continent {
  factory _Continent({required String code, required String name}) =
      _$_Continent;

  factory _Continent.fromJson(Map<String, dynamic> json) =
      _$_Continent.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ContinentCopyWith<_Continent> get copyWith =>
      throw _privateConstructorUsedError;
}
