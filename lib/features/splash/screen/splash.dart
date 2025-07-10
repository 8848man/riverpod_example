import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/router/router.dart';
import 'package:riverpod_example/router/router_path.dart';

class Splash extends ConsumerWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // FocusManager.instance.primaryFocus?.unfocus();
    final route = ref.read(goRouterProvider);

    //TODO 로그인 토큰 여부로 화면 분기처리

    Future.delayed(const Duration(seconds: 2)).then((_) {
      route.go(RouterPath.home.path);
      // MaterialPageRoute(builder: ((context) => LoginPage()));
    });

    return Scaffold(body: Center(child: Text("rwkim_study")));
  }
}
