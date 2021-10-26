import 'dart:async';

import 'package:bloc_services/bloc_services.dart';
import 'package:example/core/errors/failures/failure.dart';
import 'package:example/features/multiple_stream_example/domain/repositories/multiple_stream_repository.dart';
import 'package:example/features/multiple_stream_example/presentation/keys/multiple_stream_keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiple_stream_example_dart_bloc.freezed.dart';
part 'multiple_stream_example_dart_event.dart';
part 'multiple_stream_example_dart_state.dart';

class MultipleStreamExampleDartBloc extends Bloc<MultipleStreamExampleEvent, MultipleStreamExampleState>
    with MultipleStreamMixin<MultipleStreamExampleEvent, MultipleStreamExampleState, MultipleStreamKeys> {
  MultipleStreamExampleDartBloc() : super(const MultipleStreamExampleInitial());

  ///* you can use repository provider or any DI(Dependency injections to get an instance)
  ///used only for the example
  final MultipleStreamRepository repository = MultipleStreamRepository();
  static const MILLI_KEY = MultipleStreamKeys.millKey();

  @override
  Stream<MultipleStreamExampleState> mapEventToState(
    MultipleStreamExampleEvent event,
  ) async* {
    yield* event.when(
      addMilliChanged: (value) async* {
        yield MultipleStreamExampleMilliUpdated(value);
      },
    );
  }

  @override
  Map<MultipleStreamKeys, StreamData<Object, Object>> get streams => {
        MILLI_KEY: StreamData<Failure, int>(stream: repository.getMillStream()),
      };

  @override
  void onStreamData(MultipleStreamKeys key, Object? data) {
    super.onStreamData(key, data);
    key.when(
      millKey: () {
        //* the object can be null if u r not properly handling make sure to check befor your cast
        add(AddMilliChanged(data! as int));
      },
    );
  }
}
