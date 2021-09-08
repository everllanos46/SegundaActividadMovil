import 'package:ejercicio1/componentes/alinear.dart';
import 'package:ejercicio1/componentes/alinear1.dart';
import 'package:ejercicio1/componentes/centrado.dart';
import 'package:ejercicio1/componentes/contador.dart';
import 'package:ejercicio1/componentes/contador1.dart';
import 'package:ejercicio1/componentes/expandir.dart';
import 'package:ejercicio1/componentes/imagenes.dart';
import 'package:ejercicio1/componentes/materialapp.dart';
import 'package:ejercicio1/componentes/modelo.dart';
import 'package:ejercicio1/componentes/perfilusuario.dart';
import 'package:ejercicio1/componentes/textos.dart';
import 'package:ejercicio1/componentes/walinear.dart';
import 'package:flutter/material.dart';

import 'componentes/textos1.dart';
import 'componentes/botones.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Probando Componentes'),
          ),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Menu(texto: 'Textos', ruta: (context) => Textos()),
                SizedBox(height: 10),
                Menu(texto: 'Textos 1', ruta: (context) => Textos1()),
                SizedBox(height: 10),
                Menu(texto: 'Botones', ruta: (context) => Botones()),
                SizedBox(height: 10),
                Menu(texto: 'Material APP', ruta: (context) => Materialapp1()),
                SizedBox(height: 10),
                Menu(texto: 'Alinear', ruta: (context) => Alinear()),
                SizedBox(height: 10),
                Menu(texto: 'Ejemplo Alinear', ruta: (context) => Alinear1()),
                SizedBox(height: 10),
                Menu(texto: 'Imagenes', ruta: (context) => Imagenes()),
                SizedBox(height: 10),
                Menu(texto: 'W Align', ruta: (context) => Walinear()),
                SizedBox(height: 10),
                Menu(texto: 'Expandir', ruta: (context) => Expandir()),
                SizedBox(height: 10),
                Menu(texto: 'Centrado', ruta: (context) => Centrado()),
                SizedBox(height: 10),
                Menu(texto: 'Perfil', ruta: (context) => Perfil()),
                SizedBox(height: 10),
                Menu(
                    texto: 'Ejercicio Modelos',
                    ruta: (context) => PeliPantalla()),
                SizedBox(height: 10),
                Menu(
                    texto: 'Ejercicio Contador 1',
                    ruta: (context) => Contador()),
                SizedBox(height: 10),
                Menu(
                    texto: 'Ejercicio Contador 2',
                    ruta: (context) => Contador1()),
              ],
            ),
          )),
    );
  }
}

class Menu extends StatelessWidget {
  final texto;
  final ruta;

  Menu({this.texto, this.ruta});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: ruta,
            ));
      },
      child: Text(
        this.texto,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
