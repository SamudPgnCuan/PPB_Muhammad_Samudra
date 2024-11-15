import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Rekomendasi Wisata',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rekomendasi Wisata'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Judul Tempat Wisata
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Menara Pandang Teratai',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),

              // Gambar Tempat Wisata
              Image.network(
                'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/29/2024/04/23/IMG_20240423_110554-3423871270.jpg', 
                height: 200,
                fit: BoxFit.cover, // Mengatur tampilan gambar agar lebih baik
              ),
              const SizedBox(height: 16),

              // Deskripsi Tempat Wisata
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Menara Pandang Teratai Purwokerto merupakan sebuah menara yang memiliki ketinggian 117 meter. Menara yang dibangun pada tahun 2021 ini, kini menjadi salah satu destinasi wisata di Purwokerto sekaligus ikon baru dari Kota Satria. Menara ini buka mulai jam 9 pagi sampai jam 10 malam setiap hari. Umumnya wisatawan datang ke tempat ini karena terpesona dengan daya tarik sekaligus keunikan bentuk puncak menaranya yang menyerupai bunga teratai. Para pengunjung bisa melihat keindahan seluruh kota dari atas. Tak hanya itu,di lantai 3 terdapat jembatan berlantai kaca tembus pandang sejauh 3 meter yang bisa dilalui pengunjung. Jembatan lantai kaca ini kokoh. Akan tetapi permukaannya yang transparan menimbulkan efek mendebarkan.',
                  textAlign: TextAlign.justify, // Meratakan teks
                ),
              ),
              const SizedBox(height: 16),

              // Tombol Kunjungi
              ElevatedButton(
                onPressed: () {
                  // Tambahkan kode tindakan di sini!
                },
                child: const Text('Kunjungi Sekarang'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}