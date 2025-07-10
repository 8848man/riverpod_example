import 'package:flutter/material.dart';

class ExampleOnErrorWidget extends StatelessWidget {
  final String errorText;
  const ExampleOnErrorWidget({super.key, required this.errorText});

  @override
  Widget build(BuildContext context) {
    return Text(errorText);
  }
}
