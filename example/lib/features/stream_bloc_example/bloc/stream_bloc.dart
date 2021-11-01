import 'package:bloc_services/bloc_services.dart' as bloc_services;
import 'package:flutter_bloc/flutter_bloc.dart';
part 'stream_event.dart';
part 'stream_state.dart';

class StreamBloc extends bloc_services.StreamBloc<StreamState, int> {
  StreamBloc() : super(const StreamState(0));

  @override
  Stream<int> get dataStream => _periodicStream();
  @override
  Future<void> onStreamData(int data, Emitter<StreamState> emit) {
    emit(state.copyWith(value: data));
    return super.onStreamData(data, emit);
  }
}

Stream<int> _periodicStream() {
  return Stream.periodic(const Duration(seconds: 2), (value) {
    return DateTime.now().millisecondsSinceEpoch;
  });
}
