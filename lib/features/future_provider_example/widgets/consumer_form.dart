import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/features/future_provider_example/models/example_model.dart';
import 'package:riverpod_example/features/future_provider_example/view_models/example_future_view_model.dart';
import 'package:riverpod_example/features/future_provider_example/view_models/example_view_model.dart';
import 'package:riverpod_example/features/future_provider_example/widgets/on_error_widget.dart';
import 'package:riverpod_example/features/future_provider_example/widgets/on_loading_widget.dart';

class DefaultConsumerForm extends ConsumerWidget {
  const DefaultConsumerForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PersonData state = ref.watch(vMExampleProvider);
    final VMExample notifier = ref.read(vMExampleProvider.notifier);
    return GestureDetector(
      onTap: () {
        notifier.modifyPerson2(firstName: '테스트');
      },
      child: Text(state.person.firstName),
    );
  }
}

class FutureConsumerForm extends ConsumerWidget {
  const FutureConsumerForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<PersonData> state = ref.watch(vMFutureExampleProvider);
    final VMExample notifier = ref.read(vMExampleProvider.notifier);
    return state.when(
      data: (data) {
        return GestureDetector(
          onTap: () {
            notifier.modifyPerson2(firstName: '테스트');
          },
          child: Text(data.person.firstName),
        );
      },
      error:
          (error, stackTrace) =>
              ExampleOnErrorWidget(errorText: error.toString()),
      loading: () => const ExampleOnLoadingWidget(),
    );
  }
}
