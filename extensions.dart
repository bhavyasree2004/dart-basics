extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

void main() {
  print(('123').parseInt());
}
