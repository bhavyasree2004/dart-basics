class Rectangle {
  int length;
  int breadth;
  Rectangle(this.length, this.breadth);

  int get area {
    return length * breadth;
  }

  int get perimeter {
    return 2 * (length + breadth);
  }

  bool get isSquare {
    return length == breadth;
  }
}

void main() {
  Rectangle r1 = new Rectangle(12, 3);
  print('Area: ${r1.area} Perimeter: ${r1.perimeter} IsSquare:${r1.isSquare}');
  Rectangle r2 = new Rectangle(4, 4);
  print('Area: ${r2.area} Perimeter: ${r2.perimeter} IsSquare:${r2.isSquare}');
}
