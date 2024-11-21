import 'package:flutter/material.dart';
 import 'package:google_fonts/google_fonts.dart';

class MyPackage extends StatelessWidget {
  const MyPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Belajar Package",
           style: GoogleFonts.barrio(),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  // icon: Icon(Icons.person),
                  prefixIcon: Icon(Icons.person),
                  hintText: "Masukkan username",
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(fontFamily: 'GoogleFonts.barlow()' )
                  ),
            ),
            const SizedBox(
              height: 18,
            ),
            const TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  // icon: Icon(Icons.person),
                  prefixIcon: Icon(Icons.lock),
                  hintText: "Masukkan password",
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}