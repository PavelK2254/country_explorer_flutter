// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Language _$_$_LanguageFromJson(Map<String, dynamic> json) {
  return _$_Language(
    code: json['code'] as String? ?? 'n/a',
    name: json['name'] as String? ?? 'n/a',
    native: json['native'] as String? ?? 'n/a',
    rtl: json['rtl'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_LanguageToJson(_$_Language instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'native': instance.native,
      'rtl': instance.rtl,
    };
