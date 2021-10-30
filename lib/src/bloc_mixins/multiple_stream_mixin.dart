import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_services/src/core/core.dart';
import 'package:flutter/foundation.dart';

/// @mixin
///
/// `E` represents the bloc event
/// `S` represents the bloc state
/// `K` represents the stream key type
///
/// @end
mixin MultipleStreamMixin<E, S, K extends Object> on Bloc<E, S> {
  ///* add the streams with their unique keys to listen for changes
  StreamDataMap<K> get streams;

  /// - contains all the stream's subscriptions which must be disposed
  /// if the widget is removed from the tress
  @protected
  @visibleForTesting
  StreamSubscriptionsMap<K> streamSubscriptions = {};

  ///* `this` is called by `streamprovider` to listen to streams when
  ///its created
  @mustCallSuper
  void initialise() {
    final StreamDataMap _streams = streams;
    if (_streams.isNotEmpty) {
      for (final key in streams.keys) {
        streamSubscriptions[key] = listenToStream(key, _streams[key]!.stream);
      }
    }
  }

  ///* listen to the single stream provided
  @visibleForTesting
  StreamSubscription listenToStream(K key, StreamEither stream) {
    return stream.listen(
      (event) {
        event.fold(
          (error) {
            onStreamError(key, error);
          },
          (data) => {
            onStreamData(key, data),
          },
        );
      },
      cancelOnError: false,
    );
  }

  ///* this gets called when the streams returns data with `R'
  @mustCallSuper
  @protected
  @visibleForTesting
  void onStreamData(K key, Object? data) {}

  ///* this gets called when the streams returns data with `L'
  @mustCallSuper
  @protected
  void onStreamError(K key, Object? error) {}

  ///* disposed all the `stream subscriptions` when the bloc
  ///is closed and empties
  ///the subscriptions map
  @visibleForTesting
  @protected
  void disposeAllStreams() {
    if (streamSubscriptions.isNotEmpty) {
      for (final key in streamSubscriptions.keys) {
        disposeStream(streamSubscriptions[key]!);
      }
      streamSubscriptions.clear();
    }
  }

  /// - disposes the provided stream subscription
  @visibleForTesting
  @protected
  void disposeStream(StreamSubscription subscription) {
    subscription.cancel();
  }

  ///* `this` cancels and subscribes again for the same key
  ///* mostly used to change the  stream in runtime
  @mustCallSuper
  void notifySourceChanged(K key) {
    assert(
      streamSubscriptions.containsKey(key) == true,
      'There is no Subscription related to provided key',
    );
    disposeStream(streamSubscriptions[key]!);
    streamSubscriptions.remove(key);
    streamSubscriptions[key] = listenToStream(key, streams[key]!.stream);
  }

  @override
  Future<void> close() {
    disposeAllStreams();
    return super.close();
  }
}
