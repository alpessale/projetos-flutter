import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crud_biblioteca01/main.dart';

class editar extends StatefulWidget {
DocumentSnapshot docid;
editar({required this.docid});
@override
State<editar> createState() => _editarState();
}
class _editarState extends State<editar> {
TextEditingController titulo = TextEditingController();
TextEditingController codigo = TextEditingController();

@override
void initState() {

titulo = TextEditingController(text: widget.docid.get("titulo"));
codigo = TextEditingController(text: widget.docid.get("codigo"));
super.initState();
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
actions: [
//atualiza as informações
MaterialButton(onPressed: () {
widget.docid.reference.update({'titulo': titulo.text, 
'codigo': codigo.text}).whenComplete(() => 
Navigator.pushReplacement(context, 
MaterialPageRoute(builder: (_)=>MyApp(),),));
},
child: Text('Atualizar'),
),
//apaga as informações
MaterialButton(onPressed: () {
widget.docid.reference.delete().whenComplete(() => 
Navigator.pushReplacement(context, 
MaterialPageRoute(builder: (_)=>MyApp(),),));
},
child: Text('Apagar'),
),
],
),
body: Container(
child: Column(
children: [
Container(
decoration: BoxDecoration(border: Border.all()),
child: TextField(
controller: titulo,
decoration: InputDecoration(
hintText: 'titulo',
),
),
),
SizedBox(
height: 10,
),
Expanded(
child: Container(
decoration: BoxDecoration(border: Border.all()),
child: TextField(
controller: codigo,
expands: true,
maxLines: null,
decoration: InputDecoration(
hintText: 'codigo',
),
),
),
),
],
),
),
);
}
}