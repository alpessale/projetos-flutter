import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DadosPessoais extends StatelessWidget {
  const DadosPessoais({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dados Pessoais")),
      body: Container(
        child: Center(child: Text("dados pessoais")),
      ),
    );
  }
}
