import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navbar.dart';






class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Sobre", style: TextStyle(fontSize: 35, color: Colors.black)),
        ),
    );
}
}