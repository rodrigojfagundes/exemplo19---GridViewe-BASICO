// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //criando um GridView, Pois com ele conseguimos colocar VARIOS CONTAINERS
      //Um do Lado do outro... e em baixo do outro...
      home: GridView.count(
        //teremos 2 colunas com container um em baixo do outro... Esse valor pd ser alterado
        crossAxisCount: 2,
        //criando uma lista com 10 containers
        children: List.generate(10, (index) {
          //cada container no formato de CARD e de cor CINZA
          return Container(
            child: Card(
              color: Colors.grey,
              //texto dos container
              child: Text('teste'),
            ),
          );
        }),
      ),
    );
  }
}
