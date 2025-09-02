// Create a Student class with fields: name, marks (list of integers).
//
// Write a normal utility function (outside the class) that calculates the average marks of a student.
//
// Now, instead of using a utility function, create an extension on Student class that provides:
//
// a method .averageMarks() → returns the average
//
// a method .hasPassed() → returns true if average ≥ 40
extension UtilityFunction on Student {
  int averageMarks() {
    int sum = this.marks.reduce((a, b) => a + b);
    return (sum / this.marks.length).toInt();
  }

  bool hasPassed() {
    return (this.averageMarks() > 40);
  }
}

class Student {
  String name;
  List<int> marks;
  Student(this.name, this.marks);
}

void main() {
  Student s1 = new Student('Bhavya', [22, 33, 44, 55, 66, 88]);
  print(s1.averageMarks());
  print(s1.hasPassed());
}
