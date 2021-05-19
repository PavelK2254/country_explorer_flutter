import 'package:freezed_annotation/freezed_annotation.dart';

part 'continent.freezed.dart';
part 'continent.g.dart';

@freezed
class Continent with _$Continent {
  factory Continent({
    required String code,
    required String name,
  }) = _Continent;

  factory Continent.fromJson(Map<String, dynamic> json) =>
      _$ContinentFromJson(json);
}
