import 'package:flutter/material.dart';

void main() => runApp(Alinear());

class Alinear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Filas y Columnas'),
        ),
        body: Row(
          //Probar Cambiar a Row
          mainAxisAlignment:
              MainAxisAlignment.spaceAround, //Cambiar la propiedad
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.accessibility_new,
              color: Colors.black,
              size: 50,
            ),
            Icon(
              Icons.accessibility_new,
              color: Colors.black,
              size: 50,
            ),
            Icon(
              Icons.accessibility_new,
              color: Colors.black,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
