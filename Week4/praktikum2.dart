void main() { 
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  names1.add('Nurhaliza Anindya Putri');  
  names1.add('2241720016');   
  
  names2.addAll({'Nurhaliza Anindya Putri', '2241720016'});

  print(names1);
  print(names2);
}