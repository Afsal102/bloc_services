import 'package:bloc_services/bloc_services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return [true] when [streamData.props.isNotEmpty]', () {
    const StreamData streamData = StreamData(stream: Stream.empty());
    expect(streamData.props.isNotEmpty, true);
  });
}
