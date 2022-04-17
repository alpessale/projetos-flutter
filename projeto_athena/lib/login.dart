import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_athena/navbar.dart';






class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text("Login - Biblioteca Athena", style: TextStyle(fontSize: 35, color: Colors.black)),
        ),
    );
}
}