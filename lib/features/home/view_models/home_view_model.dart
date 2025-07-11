import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/router/router.dart';
part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  Future<void> build() async {
    // final PersonData personData = await getPersonData();

    // return personData;
  }

  void goToFeatures(String routeName) {
    final router = ref.read(goRouterProvider);

    router.goNamed(routeName);
  }
}
