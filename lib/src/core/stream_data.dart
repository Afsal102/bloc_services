import 'package:bloc_services/src/core/core.dart';
import 'package:equatable/equatable.dart';

///{@template streamdata}
///* `L` indicates a failure and `R` indicates a proper object.
///
///{@endtemplate}
class StreamData<L extends Object, R extends Object?> extends Equatable {
  ///{@macro streamdata}
  const StreamData({
    required this.stream,
  });

  /// - stream which will should be listened to
  final StreamEither<L, R> stream;

  @override
  List<Object> get props => [stream];
}
