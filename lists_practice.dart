// Write a Dart program that does the following using Lists:
//
// Create a growable list of student marks: [45, 78, 62, 90, 55, 78, 90, 100]
//
// Perform the following operations:
//
// Print the first, last, and length of the list.
//
// Add a new mark 85 to the list.
//
// Remove the mark 55.
//
// Find the highest and lowest mark.
//
// Remove any duplicate marks and print the updated list.
//
// Print all marks that are greater than 60.
//
// Convert the list into a string joined by "-".

void main() {
  List<int> marks = [45, 78, 62, 90, 55, 78, 90, 100];
  print(marks.first);
  print(marks.last);
  print(marks.length);
  marks.add(85);
  marks.remove(55);
  var highest = marks.reduce((a, b) => a > b ? a : b);
  print(highest);
  var lowest = marks.reduce((a, b) => a < b ? a : b);
  print(lowest);
  var uniqueMarks = marks.toSet().toList();
  print(uniqueMarks);
  marks.where((mark)=>mark>60).forEach((mark)=>print(mark));
  print(marks.join('-'));
}
