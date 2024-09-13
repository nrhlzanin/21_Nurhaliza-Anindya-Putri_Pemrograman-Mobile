void main() {
  // Deklarasi variabel dan inisialisasi
  for (int index = 10; index < 27; index++) {
    print(index);
    if (index == 21) {
      break; // Keluar dari loop jika index sama dengan 21
    }
    if (index > 1 || index < 7) {
      continue; // Lewati iterasi jika index lebih besar dari 1 atau kurang dari 7
    }
    print(index);
  }
}

