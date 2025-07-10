import 'package:flutter/material.dart';
import 'package:riverpod_example/features/home/widgets/home_body.dart';
import 'package:riverpod_example/features/home/widgets/home_footer.dart';
import 'package:riverpod_example/features/home/widgets/home_header.dart';
import 'package:riverpod_example/utils/extensions.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [HomeHeader(), HomeBody().expand(), HomeFooter()]),
    );
  }
}
