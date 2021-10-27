// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'multiple_stream_example_dart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MultipleStreamExampleEventTearOff {
  const _$MultipleStreamExampleEventTearOff();

  AddMilliChanged addMilliChanged(int value) {
    return AddMilliChanged(
      value,
    );
  }
}

/// @nodoc
const $MultipleStreamExampleEvent = _$MultipleStreamExampleEventTearOff();

/// @nodoc
mixin _$MultipleStreamExampleEvent {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) addMilliChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? addMilliChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddMilliChanged value) addMilliChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddMilliChanged value)? addMilliChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultipleStreamExampleEventCopyWith<MultipleStreamExampleEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleStreamExampleEventCopyWith<$Res> {
  factory $MultipleStreamExampleEventCopyWith(
          MultipleStreamExampleEvent value, $Res Function(MultipleStreamExampleEvent) then) =
      _$MultipleStreamExampleEventCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$MultipleStreamExampleEventCopyWithImpl<$Res> implements $MultipleStreamExampleEventCopyWith<$Res> {
  _$MultipleStreamExampleEventCopyWithImpl(this._value, this._then);

  final MultipleStreamExampleEvent _value;
  // ignore: unused_field
  final $Res Function(MultipleStreamExampleEvent) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $AddMilliChangedCopyWith<$Res> implements $MultipleStreamExampleEventCopyWith<$Res> {
  factory $AddMilliChangedCopyWith(AddMilliChanged value, $Res Function(AddMilliChanged) then) =
      _$AddMilliChangedCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class _$AddMilliChangedCopyWithImpl<$Res> extends _$MultipleStreamExampleEventCopyWithImpl<$Res>
    implements $AddMilliChangedCopyWith<$Res> {
  _$AddMilliChangedCopyWithImpl(AddMilliChanged _value, $Res Function(AddMilliChanged) _then)
      : super(_value, (v) => _then(v as AddMilliChanged));

  @override
  AddMilliChanged get _value => super._value as AddMilliChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(AddMilliChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$AddMilliChanged implements AddMilliChanged {
  const _$AddMilliChanged(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'MultipleStreamExampleEvent.addMilliChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddMilliChanged &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $AddMilliChangedCopyWith<AddMilliChanged> get copyWith =>
      _$AddMilliChangedCopyWithImpl<AddMilliChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) addMilliChanged,
  }) {
    return addMilliChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? addMilliChanged,
    required TResult orElse(),
  }) {
    if (addMilliChanged != null) {
      return addMilliChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddMilliChanged value) addMilliChanged,
  }) {
    return addMilliChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddMilliChanged value)? addMilliChanged,
    required TResult orElse(),
  }) {
    if (addMilliChanged != null) {
      return addMilliChanged(this);
    }
    return orElse();
  }
}

abstract class AddMilliChanged implements MultipleStreamExampleEvent {
  const factory AddMilliChanged(int value) = _$AddMilliChanged;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddMilliChangedCopyWith<AddMilliChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$MultipleStreamExampleStateTearOff {
  const _$MultipleStreamExampleStateTearOff();

  MultipleStreamExampleInitial intial() {
    return const MultipleStreamExampleInitial();
  }

  MultipleStreamExampleMilliUpdated milliUpdated(int value) {
    return MultipleStreamExampleMilliUpdated(
      value,
    );
  }
}

/// @nodoc
const $MultipleStreamExampleState = _$MultipleStreamExampleStateTearOff();

/// @nodoc
mixin _$MultipleStreamExampleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(int value) milliUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(int value)? milliUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultipleStreamExampleInitial value) intial,
    required TResult Function(MultipleStreamExampleMilliUpdated value) milliUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultipleStreamExampleInitial value)? intial,
    TResult Function(MultipleStreamExampleMilliUpdated value)? milliUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleStreamExampleStateCopyWith<$Res> {
  factory $MultipleStreamExampleStateCopyWith(
          MultipleStreamExampleState value, $Res Function(MultipleStreamExampleState) then) =
      _$MultipleStreamExampleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MultipleStreamExampleStateCopyWithImpl<$Res> implements $MultipleStreamExampleStateCopyWith<$Res> {
  _$MultipleStreamExampleStateCopyWithImpl(this._value, this._then);

  final MultipleStreamExampleState _value;
  // ignore: unused_field
  final $Res Function(MultipleStreamExampleState) _then;
}

/// @nodoc
abstract class $MultipleStreamExampleInitialCopyWith<$Res> {
  factory $MultipleStreamExampleInitialCopyWith(
          MultipleStreamExampleInitial value, $Res Function(MultipleStreamExampleInitial) then) =
      _$MultipleStreamExampleInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MultipleStreamExampleInitialCopyWithImpl<$Res> extends _$MultipleStreamExampleStateCopyWithImpl<$Res>
    implements $MultipleStreamExampleInitialCopyWith<$Res> {
  _$MultipleStreamExampleInitialCopyWithImpl(
      MultipleStreamExampleInitial _value, $Res Function(MultipleStreamExampleInitial) _then)
      : super(_value, (v) => _then(v as MultipleStreamExampleInitial));

  @override
  MultipleStreamExampleInitial get _value => super._value as MultipleStreamExampleInitial;
}

/// @nodoc
class _$MultipleStreamExampleInitial implements MultipleStreamExampleInitial {
  const _$MultipleStreamExampleInitial();

  @override
  String toString() {
    return 'MultipleStreamExampleState.intial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MultipleStreamExampleInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(int value) milliUpdated,
  }) {
    return intial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(int value)? milliUpdated,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultipleStreamExampleInitial value) intial,
    required TResult Function(MultipleStreamExampleMilliUpdated value) milliUpdated,
  }) {
    return intial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultipleStreamExampleInitial value)? intial,
    TResult Function(MultipleStreamExampleMilliUpdated value)? milliUpdated,
    required TResult orElse(),
  }) {
    if (intial != null) {
      return intial(this);
    }
    return orElse();
  }
}

abstract class MultipleStreamExampleInitial implements MultipleStreamExampleState {
  const factory MultipleStreamExampleInitial() = _$MultipleStreamExampleInitial;
}

/// @nodoc
abstract class $MultipleStreamExampleMilliUpdatedCopyWith<$Res> {
  factory $MultipleStreamExampleMilliUpdatedCopyWith(
          MultipleStreamExampleMilliUpdated value, $Res Function(MultipleStreamExampleMilliUpdated) then) =
      _$MultipleStreamExampleMilliUpdatedCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$MultipleStreamExampleMilliUpdatedCopyWithImpl<$Res> extends _$MultipleStreamExampleStateCopyWithImpl<$Res>
    implements $MultipleStreamExampleMilliUpdatedCopyWith<$Res> {
  _$MultipleStreamExampleMilliUpdatedCopyWithImpl(
      MultipleStreamExampleMilliUpdated _value, $Res Function(MultipleStreamExampleMilliUpdated) _then)
      : super(_value, (v) => _then(v as MultipleStreamExampleMilliUpdated));

  @override
  MultipleStreamExampleMilliUpdated get _value => super._value as MultipleStreamExampleMilliUpdated;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(MultipleStreamExampleMilliUpdated(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$MultipleStreamExampleMilliUpdated implements MultipleStreamExampleMilliUpdated {
  const _$MultipleStreamExampleMilliUpdated(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'MultipleStreamExampleState.milliUpdated(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MultipleStreamExampleMilliUpdated &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $MultipleStreamExampleMilliUpdatedCopyWith<MultipleStreamExampleMilliUpdated> get copyWith =>
      _$MultipleStreamExampleMilliUpdatedCopyWithImpl<MultipleStreamExampleMilliUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intial,
    required TResult Function(int value) milliUpdated,
  }) {
    return milliUpdated(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intial,
    TResult Function(int value)? milliUpdated,
    required TResult orElse(),
  }) {
    if (milliUpdated != null) {
      return milliUpdated(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MultipleStreamExampleInitial value) intial,
    required TResult Function(MultipleStreamExampleMilliUpdated value) milliUpdated,
  }) {
    return milliUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MultipleStreamExampleInitial value)? intial,
    TResult Function(MultipleStreamExampleMilliUpdated value)? milliUpdated,
    required TResult orElse(),
  }) {
    if (milliUpdated != null) {
      return milliUpdated(this);
    }
    return orElse();
  }
}

abstract class MultipleStreamExampleMilliUpdated implements MultipleStreamExampleState {
  const factory MultipleStreamExampleMilliUpdated(int value) = _$MultipleStreamExampleMilliUpdated;

  int get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultipleStreamExampleMilliUpdatedCopyWith<MultipleStreamExampleMilliUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
