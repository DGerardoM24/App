import 'dart:ui';

import 'package:beta/PageLogin.dart';
import 'package:beta/PageRegister.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppMazahua',
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          decoration: const BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0.0, 0.9999999),
              colors: const <Color>[
                Color.fromARGB(255, 38, 34, 255),
                Color.fromARGB(255, 56, 232, 255),
              ],
              tileMode: TileMode.repeated,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "APP MAZAHUA",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  //hola
                  height: 250.0,
                  width: 450.0,
                  child: Image.asset('assets/logoapp.png'),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  width: 200,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 25.0,
                            spreadRadius: 2.0,
                            offset: Offset(10.0, 10.0))
                      ],
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(50)),
                  child: FlatButton(
                    child: Text(
                      "Registrarse",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageRegister()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  width: 200,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 25.0,
                            spreadRadius: 2.0,
                            offset: Offset(10.0, 10.0))
                      ],
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: FlatButton(
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PageLogin()));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  width: 200,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38,
                            blurRadius: 25.0,
                            spreadRadius: 2.0,
                            offset: Offset(10.0, 10.0))
                      ],
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(50)),
                  child: FlatButton(
                    child: Text(
                      "Salir",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
