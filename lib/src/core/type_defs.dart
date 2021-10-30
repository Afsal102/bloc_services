import 'dart:async';

import 'package:bloc_services/src/core/stream_data.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';

///  `Stream<Either<Failure,Success>>`
// ignore: lines_longer_than_80_chars
typedef StreamEither<L extends Object, R extends Object?> = Stream<Either<L, R>>;

/// `Map<K,StreamData>`
typedef StreamDataMap<K> = Map<K, StreamData>;

/// `Map<K,StreamSubscription`
typedef StreamSubscriptionsMap<K> = Map<K, StreamSubscription>;

/// `T Function(BuildContext context)`
typedef CreateBloc<T> = T Function(BuildContext context);
