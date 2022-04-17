import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projeto_3_tarde_menu/menuprincipal.dart';

void main() {
  runApp(MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.indigo, brightness: Brightness.dark),
      home: MinhaPagina(),
    );
  }
}

class _MeuCabecalho {
  const _MeuCabecalho(this.visibilidade, this.titulo);
  final bool visibilidade;
  final String titulo;
}

class MinhaPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinhaPaginaEstado();
  }
}

class MinhaPaginaEstado extends State<MinhaPagina> {
  final notificacaoCabecalho = ValueNotifier<_MeuCabecalho?>(null);

  void _recarregarCabecalho(String titulo, bool visibilidade,
      {String? ultimoCabecalho}) {
    final valorCabecalho = notificacaoCabecalho.value;
    final visibilidadeCabecalho = valorCabecalho?.visibilidade ?? false;
    final tituloCabecalho = valorCabecalho?.titulo ?? titulo;
    if (tituloCabecalho != titulo ||
        ultimoCabecalho != null ||
        visibilidadeCabecalho != visibilidade) {
      Future.microtask(() {
        if (!visibilidade && ultimoCabecalho != null) {
          notificacaoCabecalho.value = _MeuCabecalho(true, ultimoCabecalho);
        } else {
          notificacaoCabecalho.value = _MeuCabecalho(visibilidade, titulo);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuPrincipal(),
      body: SafeArea(
          child: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                centerTitle: false,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                title: Text(
                  "Testando",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
              ),
              ...[
                SliverPersistentHeader(
                  delegate: MeuCabecalho(
                      "Teste outubro",
                      (visibilidade) =>
                          _recarregarCabecalho(("outubro"), visibilidade)),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return ListTile(
                      title: Text("teste: $index"),
                    );
                  }, childCount: 11),
                ),
              ], //...
              ...[
                SliverPersistentHeader(
                  delegate: MeuCabecalho(
                      "Teste setembro",
                      (visibilidade) =>
                          _recarregarCabecalho(("setembro"), visibilidade)),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return ListTile(
                      title: Text("teste: $index"),
                    );
                  }, childCount: 6  ),
                ),
              ], //...
            ],
          ),
        ],
      )),
    );
  }
}

const titulo_esquerda = 55.0;
typedef CabecalhoAtivo = void Function(bool visibilidade);

class MeuCabecalho extends SliverPersistentHeaderDelegate {
  const MeuCabecalho(this.titulo, this.cabecalhoAtivo);
  final titulo;
  final CabecalhoAtivo cabecalhoAtivo;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    if (shrinkOffset > 0) {
      cabecalhoAtivo(true);
    } else {
      cabecalhoAtivo(false);
    }
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          titulo,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  @override
  double get maxExtent => titulo_esquerda;

  @override
  double get minExtent => titulo_esquerda;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
