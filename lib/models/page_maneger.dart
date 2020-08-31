import 'package:flutter/material.dart';

/*
Classe responsável para alterar a página e sabermos em qual página nós estaremos
de qualquer local do app.
 */

class PageManeger {

  PageManeger(this._pageController);

  PageController _pageController;

  int page = 0;

  //Método responsável por efetuar a mudança de página (tela)
  void setPage(int value){
    //testando se a página que eu quero ir é a página que estou...
    if(value == page) return;
    page = value;
    _pageController.jumpToPage(value);
  }
}