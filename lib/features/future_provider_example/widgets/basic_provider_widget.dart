part of '../lib.dart';

// class BasicProviderWidget extends StatelessWidget {
//   const BasicProviderWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: 200,
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: const Color.fromRGBO(255, 235, 59, 1),
//         ),
//       ),
//       child: const Center(
//         child: BasicProvierWidgetContents(),
//       ),
//     );
//   }
// }

class BasicProvierWidgetContents extends ConsumerWidget {
  const BasicProvierWidgetContents({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PersonData state = ref.watch(vMExampleProvider);
    final NotifierInterface notifier = ref.read(vMExampleProvider.notifier);
    return Column(
      children: [
        Text('firstName is ${state.person.firstName}'),
        Text('lastName is ${state.person.lastName}'),
        Text('age is ${state.person.age}'),
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
            notifier.modifyPerson2(lastName: notifier.lastNameController.text);
          },
          buttonText: '성 변경',
        ),
      ],
    );
  }
}
