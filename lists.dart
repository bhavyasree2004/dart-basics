// Lists are ordered collection of elements
// Types: Growable list, Fixed-length list
void main() {
  //Creating list
  var randomList = [1, 2, 3, 4, 5, 6];
  //Accessing elements
  print(randomList[0]);
  print(randomList[4]);

  //Updating Elements
  randomList[3] = 945;
  print(randomList);

  //Adding and removing elements in the list
  randomList.add(34); //Adds element to the last
  print(randomList);
  randomList.addAll([
    8,
    9,
    10,
  ]); //Used when more than one element should be added into the list
  print(randomList);
  randomList.insert(0, 777); //Inserts element to the particular index
  print(randomList);
  randomList.remove(777); //Removes the particular value
  print(randomList);
  randomList.removeAt(2); //Removes by value
  print(randomList);
  randomList.removeLast(); //Removes the last element
  print(randomList);

  //Iterating over the list
  //using for loop
  for (int i = 0; i < randomList.length; i++) {
    print(randomList[i]);
  }
  //using for in
  for (var num in randomList) {
    print(num);
  }
  //using foreach
  randomList.forEach((num) => print(num));

  //Important list methods
  print(randomList.length); //Prints length
  print(randomList.isEmpty); //Returns true if empty
  print(randomList.isNotEmpty); //Return true if not empty
  print(randomList.reversed); //Reverses the elements in the list
  print(
    randomList.contains(9),
  ); //Returns true if element is present in the list
  print(randomList.indexOf(9)); //Print index number of element
  print(
    randomList.sublist(2, 5),
  ); //Prints the sublist   start-inclusive  end-exclusive
  print(randomList.join('*')); //Concatenates the string with the seperator

  //adding to lists using spread operator
  List<int> list1 = [2, 3, 4, 5];
  List<int> list2 = [3, ...list1, 8];
  print(list2);

  //Fixed length list
  var fixedList = List<int>.filled(3, 0);
  print(fixedList);
}
