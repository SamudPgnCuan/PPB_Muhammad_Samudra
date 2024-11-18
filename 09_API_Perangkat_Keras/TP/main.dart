import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Memilih Gambar'),
          centerTitle: true,
        ),
        body: Center(
          child: ImageContainer(),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Container berisi ikon gambar
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Icon(
              Icons.image_outlined,
              size: 50,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(height: 20),
        // Baris tombol
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Tombol kamera
            ElevatedButton.icon(
              onPressed: () {}, // Tidak ada fungsi
              icon: Icon(Icons.camera_alt),
              label: Text('Camera'),
            ),
            // Tombol galeri
            ElevatedButton.icon(
              onPressed: () {}, // Tidak ada fungsi
              icon: Icon(Icons.photo),
              label: Text('Gallery'),
            ),
            // Tombol hapus
            ElevatedButton.icon(
              onPressed: () {}, // Tidak ada fungsi
              icon: Icon(Icons.delete),
              label: Text('Delete'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
