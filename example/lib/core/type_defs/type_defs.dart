import 'package:dartz/dartz.dart';
import 'package:example/core/errors/failures/failure.dart';

typedef StreamEither<T> = Stream<Either<Failure, T>>;
