import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/features/future_provider_example/interfaces/view_model_interface.dart';
import 'package:riverpod_example/features/future_provider_example/models/example_model.dart';
import 'package:riverpod_example/features/future_provider_example/repository/example_repository.dart';

part 'example_future_view_model.g.dart';

@riverpod
class VMFutureExample extends _$VMFutureExample implements NotifierInterface {
  @override
  TextEditingController firstNameController = TextEditingController();
  @override
  TextEditingController lastNameController = TextEditingController();
  @override
  Future<PersonData> build() async {
    return await getPersonData();
    // final PersonData personData = await getPersonData();

    // return personData;
  }

  @override
  Future<PersonData> getPersonData() async {
    final PersonData personData = await fetchDataFromServer();

    return personData;
  }

  // 가상의 서버로부터 데이터 가져오기
  Future<PersonData> fetchDataFromServer() async {
    final Person person = await ExampleRepository().getPerson();

    final personData = PersonData(person: person);

    return personData;
  }

  @override
  void modifyPerson() {
    update((state) {
      final PersonData newState = state.copyWith(
        person: state.person.copyWith(firstName: '김'),
      );
      return newState;
    });
  }

  @override
  void modifyPerson2({String? firstName, String? lastName}) {
    update((state) {
      final PersonData newState = state.copyWith(
        person: state.person.copyWith(
          firstName: firstName ?? state.person.firstName,
          lastName: lastName ?? state.person.lastName,
        ),
      );
      return newState;
    });
  }
}
