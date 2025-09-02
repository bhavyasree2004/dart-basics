// Create three functions that return Futures (simulate delays with Future.delayed):
//
// fetchName() → returns a student’s name after 2 seconds.
//
// fetchMarks() → returns a list of marks after 3 seconds.
//
// fetchGrade() → returns a grade (A/B/C) after 1 second.
//
// In main(), use async and await to:
//
// Call all three functions one by one.
//
// Print the data in a clean format.

Future<String> fetchName() async {
  return Future.delayed(const Duration(seconds: 2), () => "Bhavya");
}

Future<int> fetchMarks() async {
  return Future.delayed(const Duration(seconds: 3), () => 50);
}

Future<String> fetchGrade() async {
  return Future.delayed(const Duration(seconds: 1), () => 'A');
}

void main() async {
  print("Fetching student details...");
  String name = await fetchName();
  print('Name: ${name}');
  int marks = await fetchMarks();
  print('Marks: ${marks}');
  String grade = await fetchGrade();
  print('Grade: ${grade}');
}
