import 'package:flutter/material.dart';

class ExampleOnLoadingWidget extends StatelessWidget {
  const ExampleOnLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
