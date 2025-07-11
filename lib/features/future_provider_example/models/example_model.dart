import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_model.freezed.dart';
part 'example_model.g.dart';

@freezed
class PersonData with _$PersonData {
  const factory PersonData({
    required Person person,
    @Default(PersonWithDefault()) PersonWithDefault personWithDefault,
  }) = _PersonData;

  factory PersonData.fromJson(Map<String, dynamic> json) =>
      _$PersonDataFromJson(json);
}

@freezed
class Person with _$Person {
  const factory Person({
    required String firstName,
    required String lastName,
    int? age,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}

@freezed
class PersonWithDefault with _$PersonWithDefault {
  const factory PersonWithDefault({
    @Default('Kim') String firstName,
    @Default('ChunSik') String lastName,
    @Default(5) int age,
  }) = _PersonWithDefault;

  factory PersonWithDefault.fromJson(Map<String, dynamic> json) =>
      _$PersonWithDefaultFromJson(json);
}
