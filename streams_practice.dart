import 'dart:async';

class NumberCreator {
  NumberCreator() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      _controller.sink.add(_count);
      _count++;
    });
  }

  var _count = 1;
  final _controller = StreamController<int>();

  Stream<int> get stream => _controller.stream;
}

void main() {
  final subscription = NumberCreator().stream;

  subscription.listen(
    (event) {
      print(event);
    },
    onDone: () {
      print("Stream retrieved");
    },
    cancelOnError: false,
  );
}
