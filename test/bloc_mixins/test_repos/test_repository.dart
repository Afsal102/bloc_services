import 'package:bloc_services/src/core/core.dart';

import '../../failures/failures.dart';

abstract class TestRepository {
  StreamEither<Failure, int> milliStream();
  void dummyCallBack();
}
