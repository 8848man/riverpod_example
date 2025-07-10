import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/features/future_provider_example/interfaces/view_model_interface.dart';
import 'package:riverpod_example/features/future_provider_example/models/example_model.dart';

part 'example_view_model.g.dart';

@riverpod
class VMExample extends _$VMExample implements NotifierInterface {
  @override
  TextEditingController firstNameController = TextEditingController();
  @override
  TextEditingController lastNameController = TextEditingController();

  @override
  PersonData build() {
    final PersonData personData = getPersonData();

    return personData;
  }

  @override
  PersonData getPersonData() {
    const PersonData personData = PersonData(
      person: Person(firstName: '장', lastName: '발장', age: 12),
    );

    return personData;
  }

  @override
  void modifyPerson() {
    state = state.copyWith(person: state.person.copyWith(firstName: '김'));
  }

  @override
  void modifyPerson2({String? firstName, String? lastName}) {
    state = state.copyWith(
      person: state.person.copyWith(
        firstName: firstName ?? state.person.firstName,
        lastName: lastName ?? state.person.lastName,
      ),
    );
  }
}
