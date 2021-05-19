// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {required String code,
      required Continent continent,
      String name = 'n/a',
      String native = 'n/a',
      String phone = 'n/a',
      String capital = 'n/a',
      String currency = 'n/a',
      String emoji = 'n/a',
      String emojiU = 'n/a',
      List<Language> languages = const []}) {
    return _Country(
      code: code,
      continent: continent,
      name: name,
      native: native,
      phone: phone,
      capital: capital,
      currency: currency,
      emoji: emoji,
      emojiU: emojiU,
      languages: languages,
    );
  }

  Country fromJson(Map<String, Object> json) {
    return Country.fromJson(json);
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  String get code => throw _privateConstructorUsedError;
  Continent get continent => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get native => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get capital => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  String get emojiU => throw _privateConstructorUsedError;
  List<Language> get languages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call(
      {String code,
      Continent continent,
      String name,
      String native,
      String phone,
      String capital,
      String currency,
      String emoji,
      String emojiU,
      List<Language> languages});

  $ContinentCopyWith<$Res> get continent;
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? continent = freezed,
    Object? name = freezed,
    Object? native = freezed,
    Object? phone = freezed,
    Object? capital = freezed,
    Object? currency = freezed,
    Object? emoji = freezed,
    Object? emojiU = freezed,
    Object? languages = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      continent: continent == freezed
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as Continent,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      native: native == freezed
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      capital: capital == freezed
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      emojiU: emojiU == freezed
          ? _value.emojiU
          : emojiU // ignore: cast_nullable_to_non_nullable
              as String,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
    ));
  }

  @override
  $ContinentCopyWith<$Res> get continent {
    return $ContinentCopyWith<$Res>(_value.continent, (value) {
      return _then(_value.copyWith(continent: value));
    });
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      Continent continent,
      String name,
      String native,
      String phone,
      String capital,
      String currency,
      String emoji,
      String emojiU,
      List<Language> languages});

  @override
  $ContinentCopyWith<$Res> get continent;
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? code = freezed,
    Object? continent = freezed,
    Object? name = freezed,
    Object? native = freezed,
    Object? phone = freezed,
    Object? capital = freezed,
    Object? currency = freezed,
    Object? emoji = freezed,
    Object? emojiU = freezed,
    Object? languages = freezed,
  }) {
    return _then(_Country(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      continent: continent == freezed
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as Continent,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      native: native == freezed
          ? _value.native
          : native // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      capital: capital == freezed
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as String,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: emoji == freezed
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      emojiU: emojiU == freezed
          ? _value.emojiU
          : emojiU // ignore: cast_nullable_to_non_nullable
              as String,
      languages: languages == freezed
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country implements _Country {
  _$_Country(
      {required this.code,
      required this.continent,
      this.name = 'n/a',
      this.native = 'n/a',
      this.phone = 'n/a',
      this.capital = 'n/a',
      this.currency = 'n/a',
      this.emoji = 'n/a',
      this.emojiU = 'n/a',
      this.languages = const []});

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryFromJson(json);

  @override
  final String code;
  @override
  final Continent continent;
  @JsonKey(defaultValue: 'n/a')
  @override
  final String name;
  @JsonKey(defaultValue: 'n/a')
  @override
  final String native;
  @JsonKey(defaultValue: 'n/a')
  @override
  final String phone;
  @JsonKey(defaultValue: 'n/a')
  @override
  final String capital;
  @JsonKey(defaultValue: 'n/a')
  @override
  final String currency;
  @JsonKey(defaultValue: 'n/a')
  @override
  final String emoji;
  @JsonKey(defaultValue: 'n/a')
  @override
  final String emojiU;
  @JsonKey(defaultValue: const [])
  @override
  final List<Language> languages;

  @override
  String toString() {
    return 'Country(code: $code, continent: $continent, name: $name, native: $native, phone: $phone, capital: $capital, currency: $currency, emoji: $emoji, emojiU: $emojiU, languages: $languages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Country &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.continent, continent) ||
                const DeepCollectionEquality()
                    .equals(other.continent, continent)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.native, native) ||
                const DeepCollectionEquality().equals(other.native, native)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.capital, capital) ||
                const DeepCollectionEquality()
                    .equals(other.capital, capital)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.emoji, emoji) ||
                const DeepCollectionEquality().equals(other.emoji, emoji)) &&
            (identical(other.emojiU, emojiU) ||
                const DeepCollectionEquality().equals(other.emojiU, emojiU)) &&
            (identical(other.languages, languages) ||
                const DeepCollectionEquality()
                    .equals(other.languages, languages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(continent) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(native) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(capital) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(emoji) ^
      const DeepCollectionEquality().hash(emojiU) ^
      const DeepCollectionEquality().hash(languages);

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryToJson(this);
  }
}

abstract class _Country implements Country {
  factory _Country(
      {required String code,
      required Continent continent,
      String name,
      String native,
      String phone,
      String capital,
      String currency,
      String emoji,
      String emojiU,
      List<Language> languages}) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  Continent get continent => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get native => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get capital => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get emoji => throw _privateConstructorUsedError;
  @override
  String get emojiU => throw _privateConstructorUsedError;
  @override
  List<Language> get languages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
