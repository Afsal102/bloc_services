import 'dart:async';

import 'package:dartz/dartz.dart';

import 'core.dart';

typedef StreamEither<L extends Object, R extends Object> = Stream<Either<L, R>>;
typedef StreamDataMap<K> = Map<K, StreamData>;
typedef StreamSubscriptionsMap<K> = Map<K, StreamSubscription>;
