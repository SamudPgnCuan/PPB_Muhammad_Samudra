import 'dart:io';

void main() {
  print('Masukkan bilangan bulat:');
  int? bilangan = int.parse(stdin.readLineSync()!); // membaca input bilangan

  if (cekPrima(bilangan)) {
    print('$bilangan adalah bilangan prima');
  } else {
    print('$bilangan bukan bilangan prima');
  }
}

bool cekPrima(int bilangan) {
  if (bilangan <= 1) {
    return false; // Bilangan prima harus lebih besar dari satu
  }

  for (int i = 2; i <= bilangan ~/ 2; i++) {
    if (bilangan % i == 0) {
      return false; // Jika ada pembagi selain 1 dan bilangan itu sendiri, bukan prima
    } //pengecekan hanya sampai bilangan ~/ 2 untuk menghemat waktu karena sisanya pasti tidak ada pembagi
  }
  return true; // Bilangan prima
  }