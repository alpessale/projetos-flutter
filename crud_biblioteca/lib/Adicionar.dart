import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_biblioteca01/main.dart';

class adicionar extends StatelessWidget {
//variáveis para a edição de texto
TextEditingController titulo = TextEditingController();
TextEditingController codigo = TextEditingController();
//identifica a coleção de dados
CollectionReference ref = 
FirebaseFirestore.instance.collection("livro");

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
actions: [

MaterialButton(onPressed: () {
ref.add({'titulo': titulo.text, 
'codigo': codigo.text}).whenComplete(() => 
Navigator.pushReplacement(context, 
MaterialPageRoute(builder: (_)=>MyApp(),),));
},
child: Text('Salvar'),
),
],
),
body: Container(
child: Column(
children: [

TextField(
controller: titulo,
decoration: InputDecoration(hintText: "titulo"),
),
TextField(
controller: codigo,
decoration: InputDecoration(hintText: "codigo"),
),
],
),
),
);
}
}