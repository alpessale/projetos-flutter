import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(NovoApp());
}

class NovoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: AppNovo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppNovo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppNovoEstado();
  }
}

class AppNovoEstado extends State<AppNovo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Folha de S.Paulo",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
      body: SingleChildScrollView(
      
          child: Column(
            children: [ 
              Container( color: Colors.grey,
                width: double.infinity,
                height: 50,
                child: Center(
                  child: Text(
                    "DESDE 1921 *** UM JORNAL A SERVIÇO DA DEMOCRACIA",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.grey,
                child: Text(
                  "Dólar cai abaixo de Reais 5 com mudança de tom entre Rússia e Ucrânia",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 370,
                color: Colors.grey,
                child: Image(
                  image: AssetImage('assets/imag01.jpg'), width: MediaQuery.of(context).size.width,
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.grey,
                child: Text(
                  "Governo de SP libera retorno de 100% do público aos estádios e sem máscara",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 370,
                color: Colors.grey,
                child: Image(
                  image: AssetImage('assets/imag02.jpg'),
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.grey,
                child: Text(
                  "Esportes",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                color: Colors.grey,
                child: Text(
                  "Politica",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      
    );
  }
}
