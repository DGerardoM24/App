import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageLogin extends StatelessWidget {
  TextEditingController nombre = new TextEditingController();
  TextEditingController contrasena = new TextEditingController();
  FocusNode nom = new FocusNode();
  FocusNode con = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        decoration: const BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.0, 0.99999999),
            colors: const <Color>[
              Color.fromARGB(255, 240, 114, 252),
              Color.fromARGB(255, 152, 25, 226),
            ],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Inicar Sesion",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: nombre,
                textCapitalization: TextCapitalization.sentences,
                textAlign: TextAlign.center,
                maxLength: 22,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "Ej. soysimon2",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.white),
                  labelText: "Nombre de Usuario",
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  prefixIcon: Icon(Icons.supervised_user_circle),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: contrasena,
                textCapitalization: TextCapitalization.sentences,
                textAlign: TextAlign.center,
                maxLength: 30,
                obscureText: true,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  hintText: "********",
                  labelText: "Contraseña",
                  labelStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  contentPadding: const EdgeInsets.all(20),
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                ),
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
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
