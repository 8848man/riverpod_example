import 'package:riverpod_example/features/future_provider_example/models/example_model.dart';

class ExampleRepository {
  // Private constructor
  ExampleRepository._privateConstructor();

  // Static instance of the singleton
  static final ExampleRepository _instance =
      ExampleRepository._privateConstructor();

  // Factory constructor that returns the singleton instance
  factory ExampleRepository() {
    return _instance;
  }

  // Initialization method (currently unused but can be customized as needed)
  void _init() {
    // Initialize any necessary properties here
  }

  // 가상의 서버 딜레이
  Future<void> _serverDelay() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  Future<Map<String, dynamic>> _fetchDataFromVirtualServer() async {
    final dynamic serverData = {'firstName': '홍', 'lastName': '길동', 'age': 12};
    return serverData;
  }

  Future<Person> getPerson() async {
    await _serverDelay();

    final dynamic response = await _fetchDataFromVirtualServer();

    final Person personData = Person.fromJson(response);

    return personData;
  }
}
