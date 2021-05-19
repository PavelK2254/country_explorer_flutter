import 'package:country_explorer/data/model/continent.dart';
import 'package:country_explorer/data/model/language.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  factory Country(
      {required String code,
      required Continent continent,
      @Default('n/a') String name,
      @Default('n/a') String native,
      @Default('n/a') String phone,
      @Default('n/a') String capital,
      @Default('n/a') String currency,
      @Default('n/a') String emoji,
      @Default('n/a') String emojiU,
      @Default([]) List<Language> languages}) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
