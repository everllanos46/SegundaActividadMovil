import 'package:flutter/material.dart';

void main() => runApp(Centrado());

class Centrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue[200],
          ),
        ),
      ),
    );
  }
}
