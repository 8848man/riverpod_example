import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/features/future_provider_example/lib.dart';

void main() async {
  init();
  runApp(ProviderScope(child: myApp()));
}

/// 앱 실행전 초기화
void init() async {
  WidgetsFlutterBinding.ensureInitialized();

  //가로화면 고정
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
}

Widget myApp() {
  return const MaterialApp(
    home: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: ExampleScreen(),
    ),
  );
}
