import 'dart:io';

void main() {
  // Meminta input jumlah baris
  stdout.write('Masukkan jumlah baris piramida: ');
  int baris = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= baris; i++) { // Loop luar untuk setiap baris
    for (int j = i; j < baris; j++) { // Mencetak spasi sebelum bintang
      stdout.write(' ');
    }    
    for (int k = 1; k <= (2 * i - 1); k++) { // Mencetak bintang
      stdout.write('*');
    }
    print('');// Pindah ke baris berikutnya
  }
}