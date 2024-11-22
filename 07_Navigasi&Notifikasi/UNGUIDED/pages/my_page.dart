import 'package:flutter/material.dart';
import 'package:praktikum07_unguided/models/products.dart';
import 'package:praktikum07_unguided/pages/detail_product.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Product> products = [
    Product(
        id: 1,
        nama: 'Mouse Gemink pake k',
        harga: 300000,
        imgUrl:
            'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
        deskripsi: 'Mouse gaming cocok buat gaming'),
    Product(
        id: 2,
        nama: 'Keyboard mechanical overpriced',
        harga: 1000000,
        imgUrl:
            'https://resource.logitech.com/w_1600,c_limit,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/logitech/en/products/keyboards/mx-mechanical/gallery/mx-mechanical-keyboard-top-view-graphite-us.png?v=1&quot',
        deskripsi: 'Mending fantek bos'),
    Product(
        id: 3,
        nama: 'Headset warnet bau kijing',
        harga: 500000,
        imgUrl:
            'https://m.media-amazon.com/images/I/61CGHv6kmWL.AC_UF894,1000_QL80.jpg',
        deskripsi: 'Huek'),
    Product(
        id: 4,
        nama: 'Xbox series X',
        harga: 1000000,
        imgUrl:
            'https://images-cdn.ubuy.co.id/64ae6d4b6e6dab0153304cff-microsoft-xbox-series-x-1tb-console.jpg',
        deskripsi: 'Monggo dijual Xbox series X like new jarang dipake mending ps5'),
    Product(
        id: 5,
        nama: 'PC Gaming Gahar High End',
        harga: 50000000,
        imgUrl:
            'https://rarest.org/wp-content/uploads/2022/08/6.-Torque-770x1024.png',
        deskripsi: 'Gas sikat pc gaming paling High End se galaksi bisa buat dota 3 rata kanan spek intel core i3 gen 2'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lapak Samud'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(
              product.imgUrl,
              width: 100,
              height: 100,
            ),
            title: Text(product.nama),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Harga : ${product.harga.truncate()}'),
                Text(product.deskripsi)
              ],
            ),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (_) => MyDetailProducts(
                    products: product,
                  )
                )
              );
            },
          );
        }
      ),
    );
  }
}