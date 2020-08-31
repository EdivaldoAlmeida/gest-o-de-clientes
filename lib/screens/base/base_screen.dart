import 'package:flutter/material.dart';
import 'package:gestao_clientes/common/custom_drawer/custom_drawer.dart';

/*
Classe responsável por controlar o fluxo de telas no aplicativo
 */

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(), //Impedindo scroll entre telas
      children: <Widget>[
        Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: const Text("home"),
          ),
        ),
        Container(
          color: Colors.red),
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}
