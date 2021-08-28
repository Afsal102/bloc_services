import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiple_stream_keys.freezed.dart';

@freezed
class MultipleStreamKeys with _$MultipleStreamKeys {
  const factory MultipleStreamKeys.millKey() = _MilliKey;
}
