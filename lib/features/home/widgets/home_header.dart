import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildTitle();
  }

  Widget _buildTitle() {
    return SizedBox(
      height: 150,
      child: Center(
        child: Text(
          '각기 다른 주제에 대한 기본적인 예시입니다.',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
