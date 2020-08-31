import 'package:flutter/material.dart';
import 'package:gestao_clientes/common/custom_drawer/custom_drawer.dart';
import 'package:gestao_clientes/models/page_maneger.dart';
import 'package:provider/provider.dart';

/*
Classe responsável por controlar o fluxo de telas no aplicativo
 */

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return 
      Provider(
        create: (_) => PageManeger(pageController),
        child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(), //Impedindo scroll entre telas
        children: <Widget>[
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Home"),
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Clientes"),
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Financiamento"),
            ),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: const Text("Localização"),
            ),
          ),
        ],
    ),
      );
  }
}
