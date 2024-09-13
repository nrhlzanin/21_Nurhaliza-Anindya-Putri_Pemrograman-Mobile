#Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 3, lalu dokumentasikan berupa screenshot hasil pekerjaan beserta penjelasannya!

2. Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.

```dart
void main() {
  // Deklarasi nama lengkap dan NIM
  String namaLengkap = "Nurhaliza Anindya Putri";
  String NIM = "2241720016";

  // Loop untuk mengecek setiap angka dari 2 hingga 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      // Jika bilangan prima, cetak bilangan tersebut, nama lengkap, dan NIM
      print("$i adalah bilangan prima. Nama: $namaLengkap, NIM: $NIM");
    } else {
      print(i);
    }
  }
}

// Fungsi untuk mengecek apakah sebuah bilangan adalah bilangan prima
bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
```

img src="tugas1.png"
img src="tugas2.png"

3. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!

