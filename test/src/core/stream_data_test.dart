import 'package:bloc_services/bloc_services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const streamData = StreamData<Object, Object>(stream: Stream.empty());
  test('should return [true] when [streamData.props.isNotEmpty]', () {
    expect(streamData.props.isNotEmpty, true);
  });
}
