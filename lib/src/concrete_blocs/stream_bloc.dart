import 'package:bloc/bloc.dart';
import 'package:bloc_services/src/core/type_defs.dart';
import 'package:flutter/material.dart';

///{@template streambloc}
///  - Contains implementation for single subscription streams
///  - `StreamType` - the return type of the stream
///{@endtemplate}
@optionalTypeArgs
abstract class StreamBloc<Event, State, StreamType, L extends Object> extends Bloc<Event, State> {
  ///{@macro streambloc}
  StreamBloc(State initial) : super(initial);
  StreamEither<L, StreamType> get singleStream;
}
