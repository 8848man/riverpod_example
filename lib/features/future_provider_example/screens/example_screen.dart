part of '../lib.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Riverpod Example'),
        heightBox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 200,
              width: 200,
              child: BasicProvierWidgetContents(),
            ),
            // const BasicProviderWidget(),
            widthBox(),
            const FutureProviderWidget(),
          ],
        ),
      ],
    );
  }
}
