import 'package:bloc_services/src/core/core.dart';
import 'package:mockito/annotations.dart';

import 'failures/concrete_failure.dart';
import 'test_helpers.mocks.dart';

@GenerateMocks(
  [],
  customMocks: [
    MockSpec<TestRepository>(returnNullOnMissingStub: true),
  ],
)
void testHelpers() {}
MockTestRepository getMockTestRepository() {
  return MockTestRepository();
}

abstract class TestRepository {
  StreamEither<Failure, int> milliStream();
  Stream<int> getPeriodicMillStream();
  void dummyCallBack();
}
