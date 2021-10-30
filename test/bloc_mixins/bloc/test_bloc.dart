import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_services/src/bloc_mixins/multiple_stream_mixin.dart';
import 'package:bloc_services/src/core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../failures/failures.dart';
import '../test_repos/test_repository.dart';

part 'test_event.dart';
part 'test_state.dart';

// ignore: constant_identifier_names
const MILLI_KEY = 'MILLI_KEY';

class TestBloc extends Bloc<TestEvent, TestState> with MultipleStreamMixin {
  TestBloc({required TestRepository repository})
      : _repository = repository,
        super(TestInitial());
  final TestRepository _repository;

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
