import 'package:equatable/equatable.dart';
import 'package:bloc_services/src/core/core.dart';

///@template `StreamData`
///* `L` indicates a failure and `R` indicates a proper object.
///
///@end template
class StreamData<L extends Object, R extends Object> extends Equatable {
  final StreamEither<L, R> stream;
  const StreamData({
    required this.stream,
  });

  @override
  List<Object> get props => [stream];
}
