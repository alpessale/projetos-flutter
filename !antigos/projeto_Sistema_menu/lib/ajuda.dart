import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ajuda extends StatelessWidget {
  const Ajuda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ajuda")),
      body: Container(
        child: Center(child: Text("ajuda")),
      ),
    );
  }
}
