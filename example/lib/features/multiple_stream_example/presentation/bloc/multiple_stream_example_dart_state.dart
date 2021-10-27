part of 'multiple_stream_example_dart_bloc.dart';

@freezed
class MultipleStreamExampleState with _$MultipleStreamExampleState {
  const factory MultipleStreamExampleState.intial() = MultipleStreamExampleInitial;
  const factory MultipleStreamExampleState.milliUpdated(int value) = MultipleStreamExampleMilliUpdated;
}
