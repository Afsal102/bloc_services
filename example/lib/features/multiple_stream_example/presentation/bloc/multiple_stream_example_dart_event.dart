part of 'multiple_stream_example_dart_bloc.dart';

@freezed
class MultipleStreamExampleEvent with _$MultipleStreamExampleEvent {
  const factory MultipleStreamExampleEvent.addMilliChanged(int value) = AddMilliChanged;
}
