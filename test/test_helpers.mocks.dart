// Mocks generated by Mockito 5.0.15 from annotations
// in bloc_services/test/test_helpers.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:dartz/dartz.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

import 'bloc_mixins/test_repos/test_repository.dart' as _i2;
import 'failures/failures.dart' as _i5;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [TestRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTestRepository extends _i1.Mock implements _i2.TestRepository {
  MockTestRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i4.Either<_i5.Failure, int>> milliStream() =>
      (super.noSuchMethod(Invocation.method(#milliStream, []),
              returnValue: Stream<_i4.Either<_i5.Failure, int>>.empty())
          as _i3.Stream<_i4.Either<_i5.Failure, int>>);
  @override
  String toString() => super.toString();
}