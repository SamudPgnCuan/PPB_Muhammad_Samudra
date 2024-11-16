import 'package:flutter/material.dart';

class listViewScreen extends StatelessWidget {
  const listViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Screen'),
        backgroundColor: Colors.yellow[700],
      ),
      body: ListView(
        children: [
          Container( //type 1
            height: 100,
            width: 100,
            color: Colors.purple[200],
            child: Center(child: Text('Type 1')),
          ),
          Container( //type 2
            height: 100,
            width: 100,
            color: Colors.red[200],
            child: Center(child: Text('Type 2')),
          ),
          Container( //type 3
            height: 100,
            width: 100,
            color: Colors.green[200],
            child: Center(child: Text('Type 3')),
          ),
          Container( //type 4
            height: 100,
            width: 100,
            color: Colors.blue[200],
            child: Center(child: Text('Type 4')),
          ),
        ],
      ),
    );
  }
}