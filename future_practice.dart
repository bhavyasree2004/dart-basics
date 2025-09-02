void main() {
  Future.delayed(Duration(seconds: 5), () => 100)
      .then((value) {
        print(value);
      })
      .catchError((e) {
        print('Error: ${e}');
      }).whenComplete(() {
        print("Finshed computation");
      },);
  print("Waiting for a value....");
}
