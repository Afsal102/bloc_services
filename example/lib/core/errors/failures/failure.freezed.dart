// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  MilliFailure millFailure() {
    return const MilliFailure();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() millFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? millFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MilliFailure value) millFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MilliFailure value)? millFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) = _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $MilliFailureCopyWith<$Res> {
  factory $MilliFailureCopyWith(MilliFailure value, $Res Function(MilliFailure) then) =
      _$MilliFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$MilliFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res> implements $MilliFailureCopyWith<$Res> {
  _$MilliFailureCopyWithImpl(MilliFailure _value, $Res Function(MilliFailure) _then)
      : super(_value, (v) => _then(v as MilliFailure));

  @override
  MilliFailure get _value => super._value as MilliFailure;
}

/// @nodoc
class _$MilliFailure implements MilliFailure {
  const _$MilliFailure();

  @override
  String toString() {
    return 'Failure.millFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MilliFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() millFailure,
  }) {
    return millFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? millFailure,
    required TResult orElse(),
  }) {
    if (millFailure != null) {
      return millFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MilliFailure value) millFailure,
  }) {
    return millFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MilliFailure value)? millFailure,
    required TResult orElse(),
  }) {
    if (millFailure != null) {
      return millFailure(this);
    }
    return orElse();
  }
}

abstract class MilliFailure implements Failure {
  const factory MilliFailure() = _$MilliFailure;
}
