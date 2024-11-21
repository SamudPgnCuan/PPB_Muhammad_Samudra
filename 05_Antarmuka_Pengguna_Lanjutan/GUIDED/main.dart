import 'package:flutter/material.dart';
import 'package:praktikum05_guided/custom_scrollview.dart';
import 'package:praktikum05_guided/listview_separated.dart';
import 'package:praktikum05_guided/flexible_expanded.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: JenisListView() //listview.separated
      //home: FlexibleExpandedScreen() //flexible_expanded
      home: Custom(),//custom scroll view
    );
  }
}
