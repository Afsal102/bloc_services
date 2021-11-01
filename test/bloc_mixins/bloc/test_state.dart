part of 'test_bloc.dart';

@immutable
abstract class TestState extends Equatable {
  @override
  List<Object?> get props => [];
}

class TestInitial extends TestState {}

class TestLoaded extends TestState {
  TestLoaded({
    required this.value,
  });
  final int value;
  @override
  List<Object?> get props => [value];
}

class TestError extends TestState {
  TestError({
    required this.message,
  });
  final String message;
  @override
  List<Object?> get props => [message];
}
