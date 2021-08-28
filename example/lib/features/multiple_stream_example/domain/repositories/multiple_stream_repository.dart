import 'package:dartz/dartz.dart';
import 'package:example/core/type_defs/type_defs.dart';

class MultipleStreamRepository {
  StreamEither<int> getMillStream() async* {
    while (true) {
      yield await Future.delayed(Duration(seconds: 2), () {
        return right(DateTime.now().microsecondsSinceEpoch);
      });
    }
  }
}
