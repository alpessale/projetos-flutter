import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto_3_tarde_menu/ajuda.dart';
import 'package:projeto_3_tarde_menu/dadospessoais.dart';
import 'package:projeto_3_tarde_menu/favoritos.dart';
import 'package:projeto_3_tarde_menu/main.dart';

class MenuPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black38,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(
              height: 24,
            ),
            cabecalho(
              nome: "Paulo Felix",
              email: "paulo.silva518@etec.sp.com.br",
              imagem:
                  "https://media-exp1.licdn.com/dms/image/C4E03AQEhvdPW7pZaWQ/profile-displayphoto-shrink_800_800/0/1560217630940?e=1637193600&v=beta&t=63Dj8LvqdsmsAQ7s-NHDoAJWiITUfLqcjkRHMvPy0ww",
            ),
            const SizedBox(
              height: 24,
            ),
            Divider(color: Colors.white),
            const SizedBox(
              height: 24,
            ),
            menuitem(
              texto: "Principal",
              icone: Icons.home,
              clique: () => itemmenu(context, 0),
            ),
            const SizedBox(
              height: 16,
            ),
            menuitem(
              texto: "Dados Pessoais",
              icone: Icons.people,
              clique: () => itemmenu(context, 1),
            ),
            const SizedBox(
              height: 16,
            ),
            menuitem(
              texto: "Favoritos",
              icone: Icons.favorite,
              clique: () => itemmenu(context, 2),
            ),
            const SizedBox(
              height: 24,
            ),
            Divider(color: Colors.white),
            const SizedBox(
              height: 24,
            ),
            menuitem(
              texto: "Ajuda",
              icone: Icons.help,
              clique: () => itemmenu(context, 3),
            ),
          ],
        ),
      ),
    );
  }

  menuitem(
      {required String texto, required IconData icone, VoidCallback? clique}) {
    return ListTile(
      leading: Icon(icone, color: Colors.white),
      title: Text(texto, style: TextStyle(color: Colors.white)),
      hoverColor: Colors.white70,
      onTap: clique,
    );
  }

  cabecalho(
          {required String nome,
          required String email,
          required String imagem}) =>
      InkWell(
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imagem),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  nome,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                Text(
                  email,
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      );

  itemmenu(BuildContext context, int i) {
    Navigator.of(context).pop();
    if (i == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MeuAplicativo()));
    } else if (i == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DadosPessoais()));
    } else if (i == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Favoritos()));
    } else if (i == 3) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Ajuda()));
    }
  }
}
