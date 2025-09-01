// Create a Dart program that uses a Map to store and manage a student's details.
//
// The student data should be stored as:
//
// {
// "name": "Bhavya",
// "rollNo": 101,
// "marks": {
// "Math": 95,
// "Science": 88,
// "English": 76,
// "Computer": 89
// }
// }
// Perform the following tasks using Maps:
//
// Print the student’s name and roll number.
//
// Add a new subject "History": 82 to the marks.
//
// Update "English" marks to 80.
//
// Find the subject with the highest marks.
//
// Calculate the average marks.
//
// Print only the subjects where marks are >= 85.
//
// Remove the subject "Science".
//
// Print the final student map after all modifications.

void main() {
  Map<String, dynamic> student = {
    'name': 'Bhavya',
    'rollNo': '101',
    'marks': {'Math': 95, 'Science': 88, 'English': 76, 'Computer': 89},
  };
  //Printing student's name and rollno
  print(student['name']);
  print(student['rollNo']);

  //Adding new subject
  student['marks']['History'] = 80;
  print(student);

  //Updating English marks to 80
  student['marks']['English'] = 80;
  print(student);

  //Finding the subject with the greatest marks
  Map<String, int> marks = student['marks'].cast<String, int>();
  MapEntry<String, int> highest = marks.entries.reduce(
    (a, b) => a.value > b.value ? a : b,
  );
  print(highest.key);

  //Calculating the average marks
  int sum = 0;
  for (int mark in marks.values) {
    sum += mark;
  }
  var avg = sum / marks.length;
  print(avg);

  //Printing only the subjects whose marks are >85
  marks.entries
      .where((mark) => mark.value > 85)
      .forEach((mark) => print(mark.key));

  //Remove the subject science
  student['marks'].remove('Science');
  print(student);
}
