import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.purple[700],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                SizedBox(height: 20),
                
                // Biodata
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(Icons.person, color: Colors.purple),
                    title: Text('Nama Lengkap',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Muhammad Samudra'),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                ),
                
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(Icons.male, color: Colors.purple),
                    title: Text('Jenis Kelamin',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Laki - Laki'),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                ),
                
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(Icons.badge, color: Colors.purple),
                    title: Text('NIM',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('2211104062'),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                ),
                
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.purple),
                    title: Text('Email',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('icam.icum@gmail.com'),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                ),
                
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Icon(Icons.school, color: Colors.purple),
                    title: Text('Universitas',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('Universitas Telkom Purwokerto'),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}