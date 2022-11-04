import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageRegister extends StatelessWidget {
  TextEditingController nombre = new TextEditingController();
  TextEditingController apellido = new TextEditingController();
  TextEditingController contrasena = new TextEditingController();
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
                Color.fromARGB(255, 228, 111, 44),
                Color.fromARGB(255, 240, 173, 142),
              ],
              tileMode: TileMode.repeated,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Registrar",
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
                  maxLength: 35,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Ej. Esteban",
                      labelText: "Nombre",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: apellido,
                  textCapitalization: TextCapitalization.sentences,
                  textAlign: TextAlign.center,
                  maxLength: 40,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "Estrada FLores",
                      labelText: "Apellidos",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  controller: contrasena,
                  textCapitalization: TextCapitalization.sentences,
                  textAlign: TextAlign.center,
                  maxLength: 30,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: "*********",
                      labelText: "Contraseña",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder()),
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
                    onPressed: () {},
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
                      "Siguiente",
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
