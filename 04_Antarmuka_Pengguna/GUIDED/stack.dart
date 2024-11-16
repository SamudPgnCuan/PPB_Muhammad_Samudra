import 'package:flutter/material.dart';

class stackScreen extends StatelessWidget {
  const stackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Screen"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          height: 250,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.black.withAlpha(0),
                      Colors.black12,
                      Colors.black45,
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 90,
                width: 90,
                color: Colors.yellow,
              ),
              Container(
                margin: const EdgeInsets.all(5),
                height: 80,
                width: 80,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}