// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class Mylampada extends StatefulWidget {
  const Mylampada({super.key});

  @override
  State<Mylampada> createState() => _MylampadaState();
}

class _MylampadaState extends State<Mylampada> {

  Image cachorroFeliz = Image.asset('assets/images/cachorroFeliz.jpg');
  Image cachorroSerio = Image.asset('assets/images/cachorroSerio.jpg');
  late Image cachorroAtual = cachorroFeliz;
  Text texto = Text("cachorro sério >:|");
  Text textobutton = Text("Clique aqui para fazer o dog feliz ;D");

  void mudaEstado(){
    if (cachorroAtual == cachorroFeliz) {
      cachorroAtual = cachorroSerio;
      texto = Text("cachorro sério >:|");
      textobutton = Text("Clique aqui para fazer o dog feliz ;D");
    }
    else{
      cachorroAtual = cachorroFeliz;
      texto = Text("cachorro feliz ;)");
      textobutton = Text("Clique aqui para fazer o dog sério >:|");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          cachorroAtual,
          texto,
          ElevatedButton(
            onPressed: () {
            mudaEstado();
            setState(() {
              
            });
          }, child: textobutton)
        ]),
      ),
    );
  }
}