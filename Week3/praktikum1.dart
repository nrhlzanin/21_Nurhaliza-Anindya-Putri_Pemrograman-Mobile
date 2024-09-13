void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
   print("Something else");
  }

  if (test == "test2") print("Test2 again");

  // Menggunakan nama variabel yang berbeda dan mengubah tipe menjadi boolean
  bool isTrue = true; // Ubah tipe data ke boolean
  if (isTrue) {
    print("Kebenaran");
  }
}
