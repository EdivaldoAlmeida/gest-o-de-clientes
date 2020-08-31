import 'package:flutter/material.dart';

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
    return InkWell( //Permite que o conteúdo dentro dele seja clicável
      onTap: (){

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
                color: Colors.grey[700],
                 ),
            ),
              const SizedBox(width: 32,), //Espaçamento entre o ícone e a lateral
              Text(
                title,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[700]
                ),
              )
          ],
        ),
      ),
    );
  }
}
