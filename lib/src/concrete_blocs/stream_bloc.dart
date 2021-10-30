import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

///{@template streambloc}
///  - Contains implementation for single subscription streams
///  - `StreamType` - the return type of the stream
///{@endtemplate}‚
abstract class StreamBloc<Event, State, StreamType extends Object?>
    extends Bloc<Event, State> {
  ///{@macro streambloc}
  StreamBloc(State initial) : super(initial);

  @visibleForTesting

  /// - Stream to listen for when the bloc is created
  Stream<StreamType> get dataStream;

  /// - the stream subscription for the provided `dataStream`
  /// - will be initialised when the stream is subscribed
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

  /// - called when ever the stream emits data
  @mustCallSuper
  @protected
  void onStreamData(StreamType data) {}

  /// - called when ever the stream emits error
  @mustCallSuper
  @protected
  void onStreamError(Object error, StackTrace stackTrace) {}

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
      onStreamData,
      onError: onStreamError,
    );
  }

  @mustCallSuper
  @override
  Future<void> close() {
    disposeStream();
    return super.close();
  }
}
