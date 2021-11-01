import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

///{@template streambloc}
///  - Contains implementation for single subscription streams
///  - `StreamType` - the return type of the stream
///{@endtemplate}‚
abstract class StreamBloc<State, StreamType extends Object?>
    extends Bloc<StreamBlocEvent, State> {
  ///{@macro streambloc}
  StreamBloc(State initial) : super(initial) {
    on<OnStreamData<StreamType>>((event, emit) async {
      await onStreamData(event.streamData, emit);
    });
    on<OnStreamError>((event, emit) async {
      await onStreamError(event.error, event.stackTrace, emit);
    });
    initialise();
  }

  /// - Stream to listen for when the bloc is created
  Stream<StreamType> get dataStream;

  /// - the stream subscription for the provided `dataStream`
  /// - will be initialised when the stream is subscribed
  @visibleForTesting
  StreamSubscription<StreamType>? dataStreamSubscription;

  /// - must be called for the stream to be listened
  @mustCallSuper
  void initialise() {
    _listenToStream();
  }

  /// - cancels the stream and resubscribes to the stream to get the new data
  @mustCallSuper
  void notifySourceChanged() {
    disposeStream();
    _listenToStream();
  }

  ///{@template onstreamdata}
  /// - called when ever the stream emits data
  ///{@endtemplate}
  void _onStreamData(StreamType data) {
    add(OnStreamData(streamData: data));
  }

  ///{@template onstreamerror}
  /// - called when ever the stream emits error
  ///{@endtemplate}
  void _onStreamError(Object error, StackTrace stackTrace) {
    add(OnStreamError(error: error, stackTrace: stackTrace));
  }

  /// - called when the bloc is `disposed` or when `notifySourceChanged`
  /// is called
  @visibleForTesting
  void disposeStream() {
    dataStreamSubscription?.cancel();
    dataStreamSubscription = null;
  }

  ///- subscribes to the provided `dataStream`
  void _listenToStream() {
    dataStreamSubscription = dataStream.listen(
      _onStreamData,
      onError: _onStreamError,
    );
  }

  ///{@macro onstreamdata}
  ///
  /// **important**
  /// `super.onStreamData ` must `return` this
  ///
  @mustCallSuper
  @protected
  Future<void> onStreamData(StreamType data, Emitter<State> emit) async {}

  ///{@macro onstreamerror}
  ///
  /// **important**
  /// `super.onStreamError ` must `return` this
  ///
  @mustCallSuper
  @protected
  Future<void> onStreamError(
    Object error,
    StackTrace stackTrace,
    Emitter<State> emit,
  ) async {}

  @mustCallSuper
  @override
  Future<void> close() {
    disposeStream();
    return super.close();
  }
}

/// **Base Class**
/// - this is used as an event for the `StreamBloc` all classes must extend this
@immutable
abstract class StreamBlocEvent {}

/// {@template OnStreamData}
/// - this will be added whenever the stream emits a new value
/// {@endtemplate}
@visibleForTesting
class OnStreamData<T> extends StreamBlocEvent {
  /// {@macro OnStreamData}
  OnStreamData({
    required this.streamData,
  });

  /// - contains the data from the stream which was emitted
  final T streamData;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OnStreamData<T> && other.streamData == streamData;
  }

  @override
  int get hashCode => streamData.hashCode;
}

///{@template OnStreamError}
/// - this will be added whenever the stream emits an error
///{@endtemplate}
@visibleForTesting
class OnStreamError<T extends Object> extends StreamBlocEvent {
  ///{@macro OnStreamError}
  OnStreamError({
    required this.error,
    required this.stackTrace,
  });

  /// - contains the error which was emitted by the stream
  final T error;

  /// - if there was a  stack trace provided along with the stream error
  final StackTrace stackTrace;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OnStreamError<T> &&
        other.error == error &&
        other.stackTrace == stackTrace;
  }

  @override
  int get hashCode => error.hashCode ^ stackTrace.hashCode;
}
