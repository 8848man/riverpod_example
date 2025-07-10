import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildContents();
  }

  Widget _buildContents() {
    return SingleChildScrollView(child: Column());
  }
}
