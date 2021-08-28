part of 'test_bloc.dart';

@immutable
abstract class TestEvent extends Equatable {}

class TestEventLoaded extends TestEvent {
  final int value;
  TestEventLoaded({
    required this.value,
  });
  @override
  List<Object?> get props => [value];
}

class TestEventError extends TestEvent {
  final String message;
  TestEventError({
    required this.message,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
