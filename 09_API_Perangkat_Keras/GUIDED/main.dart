import 'package:flutter/material.dart';
import 'package:praktikum9_beneran_kayanya/camera_media_api.dart';
import 'package:praktikum9_beneran_kayanya/my_camera_activity.dart'; 



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // textTheme: GoogleFonts.poppinsTextTheme()
      ),
      //home: MyApiPage(), //bagian pertama
      home: ImageFromGalleryEx(ImageSourceType.camera), //bagian kedua
    );
  }
}