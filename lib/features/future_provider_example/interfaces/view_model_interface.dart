import 'package:flutter/material.dart';

abstract class NotifierInterface {
  TextEditingController get firstNameController;
  TextEditingController get lastNameController;

  void getPersonData();

  void modifyPerson();

  void modifyPerson2({String? firstName, String? lastName});
}
