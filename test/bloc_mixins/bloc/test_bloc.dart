import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_services/bloc_mixins/multiple_stream_mixin.dart';
import 'package:bloc_services/core/stream_data.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../failures/failures.dart';
import '../test_repos/test_repository.dart';

part 'test_event.dart';
part 'test_state.dart';

const MILLI_KEY = 'MILLI_KEY';

class TestBloc extends Bloc<TestEvent, TestState> with MultipleStreamMixin {
  final TestRepository _repository;
  TestBloc({required TestRepository repository})
      : _repository = repository,
        super(TestInitial());

  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    if (event is TestEventLoaded) {
      yield TestLoaded(value: event.value);
    }
    if (event is TestEventError) {
      yield TestError(message: event.message);
    }
  }

  @override
  void onStreamData(Object key, Object? data) {
    super.onStreamData(key, data);
    if (key == MILLI_KEY) {
      add(TestEventLoaded(value: data! as int));
    }
  }

  @override
  void onStreamError(Object key, Object? data) {
    super.onStreamError(key, data);
    if (key == MILLI_KEY) {
      final failure = data! as AuthFailure;
      add(TestEventError(message: failure.message));
    }
  }

  @override
  Map<Object, StreamData<Object, Object>> get streams => {
        MILLI_KEY: StreamData(stream: _repository.milliStream()),
      };
}
