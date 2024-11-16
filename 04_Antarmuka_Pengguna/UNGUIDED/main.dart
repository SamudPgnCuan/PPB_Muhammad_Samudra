import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<Map<String, String>> wisata = const [
    {
      'nama': 'Menara Pandang Teratai',
      'gambar': 'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/29/2024/04/23/IMG_20240423_110554-3423871270.jpg',
      'deskripsi':
          'Menara Pandang Teratai Purwokerto merupakan sebuah menara yang memiliki ketinggian 117 meter. Menara yang dibangun pada tahun 2021 ini, kini menjadi salah satu destinasi wisata di Purwokerto sekaligus ikon baru dari Kota Satria. Menara ini buka mulai jam 9 pagi sampai jam 10 malam setiap hari. Umumnya wisatawan datang ke tempat ini karena terpesona dengan daya tarik sekaligus keunikan bentuk puncak menaranya yang menyerupai bunga teratai. Para pengunjung bisa melihat keindahan seluruh kota dari atas. Tak hanya itu,di lantai 3 terdapat jembatan berlantai kaca tembus pandang sejauh 3 meter yang bisa dilalui pengunjung. Jembatan lantai kaca ini kokoh. Akan tetapi permukaannya yang transparan menimbulkan efek mendebarkan.',
    },
    {
      'nama': 'Alun-Alun Purwokerto',
      'gambar': 'https://akcdn.detik.net.id/community/media/visual/2023/08/22/alun-alun-purwokerto_169.jpeg?w=700&q=90',
      'deskripsi':
          'Alun-alun Purwokerto adalah salah satu destinasi wisata yang terkenal dan sering dikunjungi para wisatawan dan warga lokalnya. Lokasi Alun-alun Purwokerto berada di Komplek PJKA 386-388, Jalan Jend. Sudirman, Purwokerto Lor, Purwokerto, Kabupaten Banyumas, Jawa Tengah. Alun-alun Purwokerto telah dipercantik dan ditata menjadi taman yang juga dilengkapi dengan air mancur serta bangku-bangku. Selain itu, hamparan rumput dan videotron juga menambah kesan modern pada alun-alun ini.',
    },
    {
      'nama': 'Taman Andhang Pangrenan',
      'gambar': 'https://img.okezone.com/content/2020/11/29/408/2318152/siapa-sangka-taman-kota-instagramable-ini-dulunya-bekas-terminal-bus-Ng1WBXnMfo.JPG',
      'deskripsi':
          'Taman Rekreasi Andhang Pangrenan adalah objek wisata berupa taman yang berada di Kecamatan Purwokerto Selatan. Wisata Adahang Pangeran memiliki daya tarik tersendiri.Di Andhang Pangrenan, memiliki banyak wahana bermain anak anak, kuliner, dan fasilitas penunjang lainnya. Di malam hari tempat wisata ini bertambah indah dengan adanya lampion yang menghiasi taman.',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rekomendasi Wisata',style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: wisata.length,
          itemBuilder: (context, index) {
            final tempat = wisata[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      tempat['gambar']!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      tempat['nama']!,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      tempat['deskripsi']!,
                      style: const TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
