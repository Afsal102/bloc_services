# bloc_services

A package which has useful implementations of streams for bloc considered with the clean architecture way and is fully tested

## Features
* Written for the usage with `Clean Architecture`
* Provides `Stream` mixins when can be intergrated with blocs/cubits
* Uses `Either` from [dartz](https://pub.dev/packages/dartz) to get the proper stream data.
## Getting Started
> Add to the pubspec dependencies

```yaml
dependencies:
  bloc_services: <latest-version>
  flutter_bloc: <latest-version>
```
## Usage

Check the full example in the example directory on how to use it effectively with bloc.

```dart
class ExampleBloc
    extends Bloc<ExampleEvent, ExampleState>
    with
        MultipleStreamMixin{
  MultipleStreamExampleDartBloc() : super(MultipleStreamExampleInitial());

  @override
  Stream<MultipleStreamExampleState> mapEventToState(
    MultipleStreamExampleEvent event,
  ) async* {}

  @override
  Map<Object, StreamData<Object, Object>> get streams => {};

}

```
Mix your bloc with the `MultipleStreamMixin` when mixed it has an `override` called `streams`

It's a `Map<Object, StreamData<Object, Object>>` where your can pass a unique key (any object, check the example directory for a detailed implementation) and a `StreamData` which has a field  `stream`

* `stream` has the return `Type` of Either<L,R>
where the `L` is considered as an `error` and the `R` is considered as a valid data
* `StreamData` has 2 Type Parameters <L,R> these types will be used as the return type of the field `stream`
* when ever a stream emits `R` of the either a function name `onStreamData` will be called which has 2 params one is the `key` which was given in the `streams map` in the override and the other is the `data` of the `R`;
* `onStreamError` is called whenever the `L` of the either is called

