Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (final i in stream) {
    sum += i;
  }
  return sum;
}

Stream<int> dummyStream(val) async* {
  for (int i = 0; i <= val; i++) {
    yield i;
  }
}

void main() async {
  Stream<int> stream = dummyStream(5);
  int sum = await sumStream(stream);
  print(sum);
}
