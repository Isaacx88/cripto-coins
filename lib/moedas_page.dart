// ignore_for_file: prefer_const_constructors

import 'package:crypto_app/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;

    return Scaffold(
      appBar: AppBar(
        title: Text("Cripto Moedas"),
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: (BuildContext context, int moeda) {
              return ListTile(
                //Atributos do ListTile:
                //leading é a imagem da esquerda.
                leading: Image.asset(tabela[moeda].icone),
                //title é o título em evidência.
                title: Text(tabela[moeda].nome),
                //trailing é a informação mais à direita.
                trailing: Text(tabela[moeda].preco.toString()),
              );
            },
            padding: EdgeInsets.all(16),
            //Separador. Por enquanto vazio.
            separatorBuilder: (_, ___) => Divider(),
            itemCount: tabela.length), //Sempre especificar o tamanho da lista
      ),
    );
  }
}
