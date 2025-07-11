import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/features/home/enums/feature_list.dart';
import 'package:riverpod_example/features/home/view_models/home_view_model.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildContents(ref);
  }

  Widget _buildContents(WidgetRef ref) {
    return SingleChildScrollView(
        child: Column(
      children: _buildWidgetList(ref),
    ));
  }

  List<Widget> _buildWidgetList(WidgetRef ref) {
    final notifier = ref.read(homeViewModelProvider.notifier);
    return FeatureList.values.map((feature) {
      return InkWell(
        onTap: () => notifier.goToFeatures(feature.name),
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(16),
          color: Colors.blue,
          child: Text(
            feature.name, // Dart 2.15+부터 name 속성 사용 가능
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      );
    }).toList();
  }
}
