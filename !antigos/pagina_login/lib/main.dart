import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(NovoApp());
}

class NovoApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remover o debug
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber,
          title: Text("Biblioteca Ahena"),
        ),
        body: Column(
          children: <Widget>[
            TextField(),
            TextField(),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Login'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
} 

