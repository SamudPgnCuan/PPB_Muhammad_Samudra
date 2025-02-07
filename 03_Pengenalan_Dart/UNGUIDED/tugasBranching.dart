import 'dart:io';

void main() {
  print('Masukkan nilai:');
  int? nilai = int.parse(stdin.readLineSync()!); // Membaca input nilai (awalnya sebagai string) lalu diubah menjadi int

  String hasil = cekNilai(nilai);
  if (hasil.isNotEmpty) {
    print('$nilai merupakan $hasil');
  } else {
    print('');
  }
}

String cekNilai(int nilai) {
  if (nilai > 70) {
    return 'Nilai A';
  } else if (nilai > 40 && nilai <= 70) {
    return 'Nilai B';
  } else if (nilai > 0 && nilai <= 40) {
    return 'Nilai C';
  } else {
    return ''; // Return teks kosong jika tidak ada kondisi yang terpenuhi
  }
}