# Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
jawab : Fungsi adalah blok kode yang digunakan untuk melakukan tugas tertentu dan dapat dipanggil di berbagai tempat dalam program. Fungsi membantu mengorganisasi kode dan menghindari pengulangan logika yang sama di berbagai tempat.

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
jawab : 
- Positional Parameters (Parameter Posisi): Parameter ini harus disediakan dalam urutan yang benar saat fungsi dipanggil.
- Optional Positional Parameters (Parameter Posisi Opsional): Parameter ini opsional dan tidak wajib disertakan saat fungsi dipanggil. Ditandai dengan [].
- Named Parameters (Parameter Bernama): Parameter yang diberi nama ketika fungsi dipanggil. Ditandai dengan {}.
- Default Parameters (Parameter Default): Parameter yang memiliki nilai default jika tidak disediakan saat pemanggilan fungsi.

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
jawab : Fungsi dapat disimpan dalam variabel, diteruskan sebagai argumen ke fungsi lain, dan dikembalikan dari fungsi.
Contoh :  
```dart 
void printMessage(String message) {
  print(message);
}

void executeFunction(Function fn, String message) {
  fn(message); // memanggil fungsi yang diteruskan
}

void main() {
  var myFunction = printMessage;
  executeFunction(myFunction, 'Hello from a function!');
}
```

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
jawab : Fungsi tanpa nama. Fungsi ini sering digunakan ketika Anda hanya perlu fungsi untuk satu kali pemakaian, misalnya dalam callback.
Contoh:
```dart
var numbers = [1, 2, 3, 4];

numbers.forEach((number) {
  print('The number is $number');
});
```

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
jawab :
- Lexical Scope: Variabel dalam Dart hanya bisa diakses di dalam lingkup (scope) tempat mereka dideklarasikan. Lexical scope mengacu pada aturan di mana variabel dan fungsi dapat diakses berdasarkan tempat mereka dideklarasikan di kode.
Contoh:
```dart
void outerFunction() {
  int outerVariable = 100;

  void innerFunction() {
    print(outerVariable); // innerFunction dapat mengakses outerVariable
  }

  innerFunction();
}
```
- Lexical Scope: Variabel dalam Dart hanya bisa diakses di dalam lingkup (scope) tempat mereka dideklarasikan. Lexical scope mengacu pada aturan di mana variabel dan fungsi dapat diakses berdasarkan tempat mereka dideklarasikan di kode.
Contoh:
```dart
void outerFunction() {
  int outerVariable = 100;

  void innerFunction() {
    print(outerVariable); // innerFunction dapat mengakses outerVariable
  }

  innerFunction();
}
```

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
jawab : Dart tidak mendukung secara langsung pengembalian beberapa nilai. Namun, ada beberapa pendekatan untuk mengembalikan beberapa nilai:

- Menggunakan List:

```dart
List<int> getCoordinates() {
  return [10, 20];
}

void main() {
  var coordinates = getCoordinates();
  print('x: ${coordinates[0]}, y: ${coordinates[1]}');
}
```
- Menggunakan Map:

```dart
Map<String, int> getCoordinates() {
  return {'x': 10, 'y': 20};
}

void main() {
  var coordinates = getCoordinates();
  print('x: ${coordinates['x']}, y: ${coordinates['y']}');
}
```
- Menggunakan Tuples (Records di Dart):
Dart juga mendukung Records, yang serupa dengan tuples di bahasa lain.

```dart
(int, int) getCoordinates() {
  return (10, 20);
}

void main() {
  var (x, y) = getCoordinates();
  print('x: $x, y: $y');
}
```
8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!
