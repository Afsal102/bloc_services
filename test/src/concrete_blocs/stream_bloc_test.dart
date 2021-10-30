import 'package:bloc_services/src/concrete_blocs/stream_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../test_helpers.dart';
import '../../test_helpers.mocks.dart';

class StreamBlocTest extends StreamBloc<StreamBlocEvent, int, int> {
  StreamBlocTest(
    this.repository,
  ) : super(0) {
    on<Increment>((event, emit) {
      emit(event.value);
    });
  }
  final TestRepository repository;

  @override
  Stream<int> get dataStream => repository.getPeriodicMillStream();
  @override
  Future<void> onStreamData(int data) {
    add(Increment(value: data));
    return super.onStreamData(data);
  }

  @override
  Future<void> onStreamError(Object error, StackTrace stackTrace) {
    add(Increment(value: -1));
    return super.onStreamError(error, stackTrace);
  }
}

abstract class StreamBlocEvent extends Equatable {}

class Increment extends StreamBlocEvent {
  Increment({
    required this.value,
  });
  final int value;
  @override
  List<Object?> get props => [value];
}

void main() {
  late StreamBlocTest bloc;
  late MockTestRepository repository;
  setUp(() {
    repository = getMockTestRepository();
    bloc = StreamBlocTest(repository);
  });
  void mockMilliStream() {
    when(repository.getPeriodicMillStream())
        .thenAnswer((realInvocation) => Stream.fromIterable([5]));
  }

  group('dataStreamSubscription', () {
    test('should return [false] when [dataStreamSubscription] is null', () {
      expect(bloc.dataStreamSubscription, equals(null));
    });
    test(
      'should return [true] when [dataStreamSubscription] is not null ',
      () {
        mockMilliStream();

        bloc.initialise();

        expectLater(bloc.dataStreamSubscription != null, equals(true));
      },
    );
  });

  group('notifySourceChanged', () {
    test('should return [true] when the stream has resubscribed', () {
      mockMilliStream();
      bloc.initialise();
      final subscription = bloc.dataStreamSubscription;
      bloc.notifySourceChanged();
      expect(bloc.dataStreamSubscription != subscription, equals(true));
      subscription?.cancel();
    });
  });

  group('close', () {
    test(
      '''
        should return [true] when the bloc is disposed and [dataStreamSubscription] is cancelled
        ''',
      () async {
        mockMilliStream();
        bloc.initialise();

        expect(bloc.dataStreamSubscription != null, equals(true));
        await bloc.close();
        expect(
          bloc.isClosed && bloc.dataStreamSubscription == null,
          equals(true),
        );
      },
    );
  });

  group('onStreamData', () {
    test('should return  [bloc.state = 5] when onStreamData is called', () {
      mockMilliStream();

      bloc.initialise();

      expect(bloc.stream, emitsInOrder(<int>[5]));
    });
  });

  group('onStreamError', () {
    test('should return -1 when onStreamError is called', () {
      when(repository.getPeriodicMillStream())
          .thenAnswer((realInvocation) => Stream.error(Exception()));
      bloc.initialise();
      expect(bloc.stream, emitsInOrder(<int>[-1]));
    });
  });
}
