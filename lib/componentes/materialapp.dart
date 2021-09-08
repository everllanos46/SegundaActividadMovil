import 'package:flutter/material.dart';

void main() => runApp(Materialapp1());

class Materialapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscar los Widget del Scaffold',
      theme: ThemeData(
          primaryColor: Colors.greenAccent,
          backgroundColor: Colors.amberAccent), //Buscar los Widget del Scaffold
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App'),
        ),
        body: Center(
          child: Container(
            child: Text('Material APP'),
          ),
        ),
      ),
    );
  }
}
