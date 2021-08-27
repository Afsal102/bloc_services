import 'package:mockito/annotations.dart';

import 'bloc_mixins/test_repos/test_repository.dart';
import 'test_helpers.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<TestRepository>()])
void testHelpers() {}
MockTestRepository getMockTestRepository() {
  return MockTestRepository();
}
