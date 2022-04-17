import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favoritos extends StatelessWidget {
  const Favoritos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favoritos")),
      body: Container(
        child: Center(child: Text("favoritos")),
      ),
      
    );
  }
}
