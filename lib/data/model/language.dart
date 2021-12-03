import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.freezed.dart';
part 'language.g.dart';

@freezed
class Language with _$Language {
  factory Language({
    @Default('n/a') String code,
    @Default('n/a') String name,
    @Default('n/a') String native,
    @Default(false) bool rtl,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}
