import 'package:flutter/material.dart';
import 'package:prak4_guided/GridView.dart';
import 'package:prak4_guided/listview.dart';
import 'package:prak4_guided/stack.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyWidget(), // Menampilkan Gridview sebagai halaman utama
      //home: listViewScreen(), // Menampilkan listview sebagai halaman utama
      home: stackScreen(), // Menampilkan stack sebagai halaman utama
    );
  }
}