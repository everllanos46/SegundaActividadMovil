import 'package:flutter/material.dart';

void main() => runApp(Alinear1());

class Alinear1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicacion de Filas y Columnas'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: _createChat(),
          ),
        ),
      ),
    );
  }

  List<Widget> _createChat() {
    final List<Widget> chatsLists = [];
    final List<Map> mapLists = [];

    Map<String, dynamic> chat = {
      'profileImage':
          'https://st2.depositphotos.com/1104517/11965/v/600/depositphotos_119659092-stock-illustration-male-avatar-profile-picture-vector.jpg',
      'name': 'Everth Llanos',
      'lastMessage': ' Probando chats',
      'messagesNumber': 12,
      'lastHour' : '7:00'
    };

    Map<String, dynamic> chat2 = {
      'profileImage':
          'https://noverbal.es/uploads/blog/rostro-de-un-criminal.jpg',
      'name': '3014540888',
      'lastMessage': 'Segundo chat',
      'messagesNumber': 7,
      'lastHour' : '12:00'
    };

    mapLists.add(chat);
    mapLists.add(chat2);
    mapLists.forEach((element) {
      chatsLists.add(_createChatRow(element));
      chatsLists.add(Divider());
    });

    return chatsLists;
  }

  Widget _createChatRow(Map chatInfo) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              chatInfo['profileImage']),
        ),
        // Numero y Mensaje en un columna
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatInfo['name'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    chatInfo['lastMessage'],
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ]),
          ),
        ),
        // Hora y pendientes de leer en una columna
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              chatInfo['lastHour'],
              style: TextStyle(
                color: Colors.green[700],
              ),
            ),
            CircleAvatar(
              child: Text(
                chatInfo['messagesNumber'].toString(),
                style: TextStyle(fontSize: 12.0),
              ),
              radius: 10.0,
              backgroundColor: Colors.green[700],
            )
          ],
        )
      ],
    );

  }
}
