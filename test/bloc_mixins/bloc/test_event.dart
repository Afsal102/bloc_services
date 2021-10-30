part of 'test_bloc.dart';

@immutable
abstract class TestEvent extends Equatable {}

class TestEventLoaded extends TestEvent {
  TestEventLoaded({
    required this.value,
  });
  final int value;
  @override
  List<Object?> get props => [value];
}

class TestEventError extends TestEvent {
  TestEventError({
    required this.message,
  });
  final String message;
  @override
  List<Object?> get props => [message];
}
