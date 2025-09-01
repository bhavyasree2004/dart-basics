//Map is a collection of key-value pairs
void main() {
  //Creating a map
  var details = {'id': 'S190346', 'name': 'Bhavya', 'age': 21};
  //Accessing
  print(details['id']);
  //updating
  details['name'] = 'Divya';
  print(details);
  //Adding new entry
  details['dob'] = '15-03-2004';
  print(details);
  //Removing
  details.remove('age');
  print(details);
  //length of the map
  print(details.length);
  //keys
  print(details.keys);
  //values
  print(details.values);
  print(details.containsKey('designation')); //Returns true if key is in the map
  print(details.containsValue('Divya')); //Returns true if value is in the map

  //Iterating over map
  for(var key in details.keys){
    print(key);
  }

}
