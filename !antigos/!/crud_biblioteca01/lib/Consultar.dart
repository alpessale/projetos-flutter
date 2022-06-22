import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crud_biblioteca01/Editar.dart';
import 'package:crud_biblioteca01/Adicionar.dart';


class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key, required this.title}) : super(key: key);
final String title;
@override
State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  final Stream<QuerySnapshot> _usersStream =
FirebaseFirestore.instance.collection('livro').snapshots();
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text(widget.title),
),
floatingActionButton: FloatingActionButton(
onPressed: () {
Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (_) => adicionar(),
),
);
},
child: Icon(Icons.add),
),
body: StreamBuilder(
stream: _usersStream,
builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> 
snapshot) {
if (snapshot.hasError) {
return Text("não retornou");
}
if (snapshot.connectionState == ConnectionState.waiting) {
return Center(
child: CircularProgressIndicator(),
);
}
return Container(
child: ListView.builder(
itemCount: snapshot.data!.docs.length,
itemBuilder: (_, index) {
return GestureDetector(
onTap: () {
  Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (_) =>
editar(docid: snapshot.data!.docs[index]),
),
);
},
child: Column(
children: [
  ListTile(
title: Text(
snapshot.data!.docChanges[index].doc['titulo'],
),
subtitle: Text(
snapshot.data!.docChanges[index].doc['codigo'],
),
),
],
),
);
},
),
);
},
),
);
}
}