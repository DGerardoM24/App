import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppMazahua',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _login(),
    );
  }
}

class _login extends StatefulWidget {
  @override
  __loginState createState() => __loginState();
}

class __loginState extends State<_login> {
  TextEditingController nombre = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(
                  0.0, 0.99999),
              colors: const <Color>[
                Color.fromARGB(255, 38, 34, 255),
                Color.fromARGB(255, 56, 232, 255),
              ],
              tileMode:
                  TileMode.repeated, 
            ),
          ),//hola
          child: Column(
            children: [
              SizedBox(//hola
                height: 250.0,
                width: 350.0,
                child: Image.asset('assets/logoapp.png'),
              )
            ],
          ),
      ),
    );
  }
}

/*
decoration: const BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(
                  0.0, 0.99999),
              colors: const <Color>[
                Color.fromARGB(255, 38, 34, 255),
                Color.fromARGB(255, 56, 232, 255),
              ],
              tileMode:
                  TileMode.repeated, 
            ),
          ),//hola
          child: Column(
            children: [
              SizedBox(//hola
                height: 250.0,
                width: 350.0,
                child: Image.asset('assets/logoapp.png'),
              )
            ],
          ),
*/
