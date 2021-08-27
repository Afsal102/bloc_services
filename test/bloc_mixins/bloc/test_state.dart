part of 'test_bloc.dart';

@immutable
abstract class TestState extends Equatable {
  @override
  List<Object?> get props => [];
}

class TestInitial extends TestState {}

class TestLoaded extends TestState {
  final int value;
  TestLoaded({
    required this.value,
  });
  @override
  List<Object?> get props => [value];
}

class TestError extends TestState {
  final String message;
  TestError({
    required this.message,
  });
  @override
  List<Object?> get props => [message];
}
