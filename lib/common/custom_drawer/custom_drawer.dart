import 'package:flutter/material.dart';
import 'package:gestao_clientes/common/custom_drawer/drawer_tile.dart';

/*
Classe que carrega os ícones (construídos na DrawerTile) na Drawer da BaseScreen
 */

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerTile(iconData: Icons.home, title: 'início', page: 0,),
          DrawerTile(iconData: Icons.person, title: 'clientes', page: 1,),
          DrawerTile(iconData: Icons.monetization_on, title: 'financiamento', page: 2,),
          DrawerTile(iconData: Icons.location_on, title: 'localização', page: 3,),
        ],
      ),
    );
  }
}
