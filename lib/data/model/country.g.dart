// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$_$_CountryFromJson(Map<String, dynamic> json) {
  return _$_Country(
    code: json['code'] as String,
    continent: Continent.fromJson(json['continent'] as Map<String, dynamic>),
    name: json['name'] as String? ?? 'n/a',
    native: json['native'] as String? ?? 'n/a',
    phone: json['phone'] as String? ?? 'n/a',
    capital: json['capital'] as String? ?? 'n/a',
    currency: json['currency'] as String? ?? 'n/a',
    emoji: json['emoji'] as String? ?? 'n/a',
    emojiU: json['emojiU'] as String? ?? 'n/a',
    languages: (json['languages'] as List<dynamic>?)
            ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'code': instance.code,
      'continent': instance.continent,
      'name': instance.name,
      'native': instance.native,
      'phone': instance.phone,
      'capital': instance.capital,
      'currency': instance.currency,
      'emoji': instance.emoji,
      'emojiU': instance.emojiU,
      'languages': instance.languages,
    };
