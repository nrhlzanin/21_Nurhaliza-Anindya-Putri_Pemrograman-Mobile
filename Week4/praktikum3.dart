// ignore_for_file: unused_local_variable

void main () {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
     18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  gifts['name'] = 'Nurhaliza Anindya Putri';
  gifts['nim'] = '2241720016';


  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  nobleGases[20] = 'Nurhaliza Anindya Putri';
  nobleGases[30] = '2241720016';

  mhs1['name'] = 'Nurhaliza Anindya Putri';
  mhs1['nim'] = '2241720016';

  mhs2[1] = 'Nurhaliza Anindya Putri';
  mhs2[2] = '2241720016';


  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}