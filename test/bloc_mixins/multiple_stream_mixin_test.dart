import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../failures/concrete_failure.dart';
import '../test_helpers.dart';
import '../test_helpers.mocks.dart';
import 'bloc/test_bloc.dart';

const FAILURE_MESSAGE = 'dummy failure';
void main() {
  late MockTestRepository repository;
  const int expectedVal = 5;
  late TestBloc bloc;
  setUp(() {
    repository = getMockTestRepository();
    bloc = TestBloc(repository: repository);
  });
  void mockStreamFailure() {
    when(repository.milliStream()).thenAnswer(
      (realInvocation) => Stream.fromIterable(
        [left(const AuthFailure(message: FAILURE_MESSAGE))],
      ),
    );
  }

  void checkIfStreamSubscriptionsAreEmpty() {
    expect(bloc.streamSubscriptions.isEmpty, true);
  }

  void checkIfStreamSubscriptionsContainsKey({bool value = true}) {
    expect(bloc.streamSubscriptions.containsKey(MILLI_KEY), value);
  }

  test('should check if the [onStreamData] is called for the proper Key ', () async {
    when(repository.milliStream()).thenAnswer(
      (realInvocation) => Stream.fromIterable([right(expectedVal)]),
    );
    bloc.initialise();
    expectLater(bloc.stream, emitsInOrder([TestLoaded(value: expectedVal)]));
    bloc.add(TestEventLoaded(value: expectedVal));
  });
  test('should check if the [onStreamError] is called for when the data is left', () async {
    mockStreamFailure();
    expectLater(
      bloc.stream,
      emitsInOrder([TestError(message: FAILURE_MESSAGE)]),
    );
    bloc.add(TestEventError(message: FAILURE_MESSAGE));
  });
  test('should check if the streamSubscriptions has proper stream with key', () async {
    mockStreamFailure();
    bloc.initialise();
    checkIfStreamSubscriptionsContainsKey();
  });
  test('should check if the subscriptions get disposed when the bloc is closed', () {
    mockStreamFailure();
    checkIfStreamSubscriptionsAreEmpty();
    bloc.initialise();
    checkIfStreamSubscriptionsContainsKey();
    bloc.close();
    checkIfStreamSubscriptionsAreEmpty();
  });
  test('should check if the [notifySourceChanged] cancels the stream and subscribes again', () {
    mockStreamFailure();
    checkIfStreamSubscriptionsAreEmpty();
    bloc.initialise();
    checkIfStreamSubscriptionsContainsKey();
    bloc.notifySourceChanged(MILLI_KEY);
    checkIfStreamSubscriptionsContainsKey();
  });
  tearDown(() {
    bloc.close();
  });
}
