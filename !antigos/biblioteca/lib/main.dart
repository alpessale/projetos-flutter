import 'package:flutter/material.dart';
import 'navbar.dart';







void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: InicioBiblioteca(),
    );
  }
}

class InicioBiblioteca extends StatefulWidget {


  @override 
  State<StatefulWidget> createState(){
    return Pagina();
  }
}

class Pagina extends State<InicioBiblioteca> {
  @override
  Widget build(BuildContext context) {

    return Scaffold( 
      drawer: NavBar(),
      appBar: AppBar(
        title: Text("Biblioteca Athena", style: TextStyle(fontSize: 35, color: Colors.black)),
        ),
    );
  }
}