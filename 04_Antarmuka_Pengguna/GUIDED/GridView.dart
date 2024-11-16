

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kontroler Elektronik"),
        backgroundColor: Colors.brown[200]
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 kolom
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(12),
        children: [
          // Container 1
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.ac_unit, color: Colors.white),
                SizedBox(width: 8),
                Text('AC', style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            color: Colors.black,
          ),
          // Container 2
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.access_alarm, color: Colors.white),
                SizedBox(width: 8),
                Text('Jam', style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            color: Colors.blue,
          ),
          // Container 3
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.ad_units, color: Colors.white),
                SizedBox(width: 8),
                Text('Smartphone', style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            color: Colors.green,
          ),
          // Container 4
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.add_a_photo, color: Colors.white),
                SizedBox(width: 8),
                Text('Kamera', style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            color: Colors.red,
          ),
          // Container 5
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.add_call, color: Colors.white),
                SizedBox(width: 8),
                Text('Telefon', style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            color: Colors.purple,
          ),
          // Container 6
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.adf_scanner, color: Colors.white),
                SizedBox(width: 8),
                Text('Printer', style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}