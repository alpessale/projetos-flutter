
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'atendimento.dart';
import 'config.dart';
import 'dadospessoais.dart';
import 'login.dart';
import 'main.dart';
import 'mensagens.dart';
import 'meuslivros.dart';
import 'sobre.dart';




class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.yellow,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
          children: <Widget>[

            cabeca(
              nome: "name example",
              email: "example@example.com",
              imagem: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAeFBMVEW4yDn///+3xzTJ1XK0xSa1xizn7Mjq78va4qK2xzHj6bmzxB62xzK0xSfb46bI1HT7/PW7ykHt8dL9/fm9zErn7MTf5q/4+u7R24nD0WDy9eDX4JrG02i/zVK+zU7P2YP19+Xw89nU3pPQ2ofM13zE0WOwwgnh6LaPLqe2AAAKNUlEQVR4nO2da3eqOhCGQ0yKMaLc1CJg66XH//8PD2jdRZgEAhGQlefjXruYF3KbycwEWSJcf3X+SUM0crwwnZ22vivUgeB/Pp5SQijDQ7e/EZhRQtJ431yhuwo5fQ9xf2DK00Uzhe6ZvJ28O5jgVQOFc0KHbmkH6LKisaTQ95yhG9kRctjLFMb8PftnEcxXQoXBDxm6eVogM4HCnceGbpsmaBpACr/fdAaFYJ5bVbibkMBsMHpBWaHrTUkgQstDWWE6lTH4gCbPCk/vvgxWIfOiQp8P3Z4XwPcFhRMbhHfw4U/h6Z23omKc1UPhbop9NIe6vwq/pjaPPqDxXeFuGrtRCBrcFMbTHIU5zvamcIrz6C84zBX60+2ktzURWZ9TnWdy6DxTOMnV/gFOLTTZxfCO46LN9PbcRYiPJrxW5NAtuiyHbsRLYSeUTnmiyaaaNfKGbsNrwdHQLXg5oz8e7MzE+6jBYDAYDAaDwWAwGAwGg8FgMBgMBoPhHcGMOg7JcBz6LjlvTcE0U4aS02qxsW37Y7PZxueIkndNDyvDCI/ixb6QwPFIbrBXM9ZY5e3rt+K1AV1Lwi4f4uRNy/Jjr1EmHLM/WmKfXyiR8tmHRN0vxxN1aj8krX+OiNXLwoEoi3fN2hBcQ1KjcYQKGZlXh56YTSoPnhudQsy/ZKMP1IhkLRmbQic8qrckOEmSN8elEPO4XVv2obAxo1LI0LF1a75Eo3FMCp1EZYYpsxBMqiNSyD876MvYIzDWczwK+babQMtyD9AeZDQKuwvM5tQIkDgWhToEWmC26kgUPnIyuxKElelmHAqdjpPMH9VMslEopLP6X2tKJSe3g0JtGT95ipSU4yJeJ1GaRskl3nzX/Od56Su2V7jRlg9DZI3ezyNOHMrwDUYdTi9X6d48el4Wl6t5LeBe8VtbVhoHq/fcCLYHoCARc8jMFivclRJ1aC3/gS3QlrNFL8K2zoUm/JJ74uXlqjhBOCfoKWt9E6loM7pBsqwp7KAN/He2Yh7LMoKestLXRwXtDC61BXt4BPg6vhPVQj8MGtX6yiRg8AXm2+gGnQRXXo/7yVVTrbgP/PxOXxflcCE0v+GHKFnMW6bcMng3pS9hi8HTjN24jxRNLrtFpS0GbjYuGj8huBSqDIJ/X1F9AKKnYjoFrvpSX5drSKDaUnsfi+5JeQDe/hh6w0eNub3gKLeQ2rdwshl1S1v1K3CzEWB9xz74APyAtVbc7y4TP2y3eNEz9PuQGd0WCu1LFsp9BNcfXsB/l0ICtVZE4sBaG/SXHE2hwxF9BkUG/oFeYW8KwUlAn0GRA3XS/moUENBk0lsEArILe/uELKn+uGUlms9Eq7/Q2yjEoElT9g90BNqxLfoqMwHuh5tvFpsBDcOkpxgL0D2r0aC4Q6pzWdDTPEO/AIFW9J/uk5jqamj3U5JI5Nzbx6guKkCN6k/M+5loHHEcxOagTyNk3fczDB1pIMtGWz1nyHLqpwqDJxOY9yRNJZ1Z9azClXdSrBazJWwmrTsG2uspegz8jnzLhn98WwFf3OWlTvYbiY6eCiyHe6lC2CEgRlyxETabnvjUsG4BCuX161QVXsRdjQAl8kvMu0scUmGDfmqdOq/NgyoUOaKLdD64ABQee1OISIO4geqJuaLC6lj47mmmuUmsj++UN6eBwqqNLS/nqvUboiXkQinRsaAeq+7vA6lTV6/CrJ8GboY00KxbN8XAiYG056sqnNU4wamTQXEYnTYimd2CMaBlV/raVRU23MZjTAn/go/Agm4rBlN8Z6oKI4U+xjh40m11i9bn1dlMeiaiqlBtsqcheBTc6SMSIJ5C9v8VFcqnrSoMPETp9A0hI0YWhaSo0FVdzcCgkHWX+qQY8MnKuqmiQvUOxo/Vp3SbTYGpRjZ4cLQQcq367dRdr5ADt+NABN7ZQvJE7Aj5rxqz0iLsjlfXxW47N2Df1vZohFQf1CKcQrsHF3Rbtjq/o9XVrM1iDXnhu3lswMODNsc/QMBBmwEEdSr1pzw9EdpItDg9gJz0bewCqD1dHZyAwhb91AG2IwdoGGJ5/4C+YUeFBAzbU/WQ8Gv1GeAc6HjyA1jAKO96fQUcbmLNlHoYuBcBOillmQDpy4P2kV39UdAzMxIFiQx0flb+G+bnvC9LPyJwGtY5rkDwEa1L41fHwJOyTenvMU/u060r2emA28jOPkUiCPJueuEljUD7vGQbOt6/viKJ/eVAh9Jw7C5KFvCbhNAiDh7mloIb6dMM8iOaT8HoDA2xIVSYLnOu/YyUCUKoi5+wnFgcCA6WlggygXWE0sLxiTn7hMvWL8a/BB6kwijE/Ke8cXIjqKPSEHKgyoZtY7DkwHJ/cQS1IbBDz0Kf7l/4Jvag897qtcRMkN75oSWwgMos290q4oQuizJvzrFkK86bKY4dwVNPefEQ/Pc4ga+tzufalJqzLteerw+I8NvBLicsTGJb5sct+gkAe+gXO05CXOcvdXXFhkDTdInA3R/9jOOuNhu6aGGC4Y+Fh9b4vLfaYkMaHOc15jnOHvK9NEeXvjyOrmGlj3pKK3qTg0IhW41RdthTLYYhoGJ6iTZNDdA2Cm8sQZezMkB0IWQ8NmOmN9h0qaOjQqkocKhsA7a6g+wwFc7sTYG9A3B6YS2vuOS3a07+StAmyAdQy/4lsbwCS6EhJ+FLl+ThigW+JoiQHgS7p3p2qeSlK/cO/0UCc1Og3aCxtnJTS7Fuiqi/a4GC1kAN36BBVMRJm0/V7uy1ocqYJ0c1fa6sTNTfY+tj2e4s6MsvT82sVoWFw503zMwjqcAj8MQx7SXWHPNUYv89NejcqLTg46l1Go8zTfHBDVrjkPWmTuRu5alVb8QExeLZerdNWyWitmZJSBT7Ivttt4mhihK1UH442cCss19FbR7XFUwJCb/mG//7ITQzWvf29ZRQIvLg1D+UEYLW8cI+fu8yE3jvb7anyBmwJGpez4RwgrwwDD1vSThvL+6PZV76ld+4VU7R0dLOYI0ZyAaDwWAwGAwGg8FgMBgMBoPBYDAYDAbD6OindtdwhCgdugmvBUeor0KPA4EvSNs1JuOEndDrLoEcBfSKeqplORT8iPqrezwINEBwvvFUwImFeqzOPQB0mynUec3A6OC7TGFPFUkHIc+pQr3VzR2CvJgAqisy987cMkPz/MZX3m09KM72V6He9KjxcE/uveWodiw+OFbuWaH3LFzFa2PeA3ZPXr4rfEWK1OD8XmX2m0mt9eaWcfDIXH7kiuu8fWcU/LvK7KEw0Hu3yeD8VcT5l+/vTmq2oX/Z038VDXYTklgQWFBoueIL7N8MUqyd+1SVIpnG5ub5xsXnuhur3pKmXgcrVcQpVRbZ95P49jowX5eSzSq1U67qt2iOB0zCSoWSanWYIG570d3QMH4AMsLB+jeLQbLgOoEZ4Rf4MkroH/NMxpnHHcrYEo8exvIEwbOoRo9A4U2lfY0/v9azkbP+jK++JJX1f5ytjIyzG0pJAAAAAElFTkSuQmCC"
            ),
            Divider(color: Colors.black,),
            menuitem(
              texto: "Início",
              icone: Icons.home, 
              toque: () => selecao(context, 0),
            ),
            Divider(color: Colors.black,),
            menuitem(
              texto: "Meus dados",
              icone: Icons.people, 
              toque: () => selecao(context, 1),
            ),
            Divider(color: Colors.black,),
            menuitem(
              texto: "Meus livros",
              icone: Icons.book, 
              toque: () => selecao(context, 2),
            ),
             Divider(color: Colors.black,),
            menuitem(
              texto: "Mensagens",
              icone: Icons.markunread, 
              toque: () => selecao(context, 3),
            ),
            Divider(color: Colors.black,),
            menuitem(
              texto: "Atendimento",
              icone: Icons.help_center ,
              toque: () => selecao(context, 4),
            ),
            Divider(color: Colors.black,),
            menuitem(
              texto: "Configurações",
              icone: Icons.miscellaneous_services, 
              toque: () => selecao(context, 5),
            ), 
            Divider(color: Colors.black,),
            menuitem(
              texto: "Sobre",
              icone: Icons.info,
              toque: () => selecao(context, 6),
            ),
            Divider(color: Colors.black,),
            menuitem(
              texto: "Sair",
              icone: Icons.logout,
              toque: () => selecao(context, 7),
            ),
            Divider(color: Colors.black,),
          ],
        ),    
      ),
    );
  }

  menuitem({required String texto, required IconData icone, VoidCallback? toque}) {
    return ListTile(
      leading: Icon(icone, color: Colors.blue[900], size: 30.0),
      title: Text(texto, style: TextStyle(color: Colors.blue[900], fontSize: 30.0),
      ),
      hoverColor: Colors.white,
      onTap: toque,
    );
  }

  cabeca({required String nome, required String email, required String imagem}) => InkWell(
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(imagem),
        ),
        SizedBox(height: 10, width: 0,),
        Column(
          children: [
          Text(nome, style: TextStyle(fontSize: 15,color: Colors.blue[900]),),
          Text(email, style: TextStyle(fontSize: 15,color: Colors.blue[900]),),

        ],)
    ],
    ),
  );

  selecao(BuildContext context, int i) {
    Navigator.of(context).pop();
    switch(i){
      
      case 0:
      Navigator.of(context)
      .push(MaterialPageRoute(builder: (context)=> InicioBiblioteca()
      ),
      );
      break;

      case 1: Navigator.of(context)
      .push(MaterialPageRoute(builder: (context)=> Meusdados()
      ),
      );
      break;

      case 2: Navigator.of(context)
      .push (MaterialPageRoute(builder: (context)=> Meuslivros()
      ),
      );
      break;

      case 3: Navigator.of(context)
      .push(MaterialPageRoute(builder: (context)=> Mensagens()
      ),
      );
      break;


      case 4: Navigator.of(context)
      .push(MaterialPageRoute(builder: (context)=> Atendimento()
      ),
      );
      break;

      case 5: Navigator.of(context)
      .push(MaterialPageRoute(builder: (context)=> Config()
      ),
      );
      break;

      case 6: Navigator.of(context)
      .push(MaterialPageRoute(builder: (context)=> Sobre()
      ),
      );
      break;

      case 7: Navigator.of(context)
      .push(MaterialPageRoute(builder: (context)=> Login()
      ),
      );
      break;




      
      
      
      default:
    }
  }
}