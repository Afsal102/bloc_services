part of 'stream_bloc.dart';

class StreamState {
  final int value;
  const StreamState(this.value);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StreamState && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  StreamState copyWith({
    int? value,
  }) {
    return StreamState(
      value ?? this.value,
    );
  }
}
