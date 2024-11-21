import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:praktikum06_guided/package.dart';
//import 'package:praktikum06_guided/my_tabbar.dart';
import 'package:praktikum06_guided/my_bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: const MyPackage(), //bab package
      //home: const MyTabBar(), //bab TabBar
      home: const MyBottomNav(), //bab Bottom Navigation Bar
    );
  }
}