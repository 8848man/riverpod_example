part of '../lib.dart';

class FutureProviderWidget extends ConsumerWidget {
  const FutureProviderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(255, 235, 59, 1)),
      ),
      child: const Center(child: _FutureProvierWidgetContents()),
    );
  }
}

class _FutureProvierWidgetContents extends ConsumerWidget {
  const _FutureProvierWidgetContents();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<PersonData> state = ref.watch(vMFutureExampleProvider);
    final VMFutureExample notifier = ref.read(vMFutureExampleProvider.notifier);

    return state.when(
      data: (data) {
        return Column(
          children: [
            Text('firstName is ${data.person.firstName}'),
            Text('lastName is ${data.person.lastName}'),
            Text('age is ${data.person.age}'),
            _buildTextFieldWithButton(
              controller: notifier.firstNameController,
              onPressed: () {
                notifier.modifyPerson2(
                  firstName: notifier.firstNameController.text,
                );
              },
              buttonText: '이름 변경',
            ),
            // 성 변경 필드와 버튼
            _buildTextFieldWithButton(
              controller: notifier.lastNameController,
              onPressed: () {
                notifier.modifyPerson2(
                  lastName: notifier.lastNameController.text,
                );
              },
              buttonText: '성 변경',
            ),
          ],
        );
      },
      error: (error, stackTrace) => Container(),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
