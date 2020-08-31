import 'package:flutter/material.dart';
import 'package:gestao_clientes/models/page_maneger.dart';
import 'package:provider/provider.dart';

/*
Classe responsável por construir um Icone na Drawer. Recebe com oparâmento um
Icone, um texto e uma página.
 */

class DrawerTile extends StatelessWidget {

  const DrawerTile({this.iconData, this.title, this.page});
  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {

    //Obtendo a página atual
    final int curPage = context.watch<PageManeger>().page;

    return InkWell( //Permite que o conteúdo dentro dele seja clicável
      onTap: (){
        context.read<PageManeger>().setPage(page);
      },
      child: SizedBox(
        height: 60,//Envolve toda a linha em uma caixa, possibilitando defineir uma algura e largura
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(
              iconData,
                size: 32,
                //Colocando a cor vemelha no ícone, caso esteja nessa página.
                color: curPage == page ? Colors.red : Colors.grey[700],
                 ),
            ),
              const SizedBox(width: 32,), //Espaçamento entre o ícone e a lateral
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: curPage == page ? Colors.red : Colors.grey[700],
                ),
              )
          ],
        ),
      ),
    );
  }
}
