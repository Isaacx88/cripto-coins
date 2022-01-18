// ignore_for_file: prefer_const_constructors

import 'package:crypto_app/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'models/moeda.dart';

class MoedasPage extends StatefulWidget {
  const MoedasPage({Key? key}) : super(key: key);

  @override
  State<MoedasPage> createState() => _MoedasPageState();
}

class _MoedasPageState extends State<MoedasPage> {
  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;
    NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
    List<Moeda> selecionadas = [];

    appBarDinamica() {
      if (selecionadas.isEmpty) {
        return AppBar(
          title: Text("CriptoMoedas"),
        );
      } else {
        return AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        );
      }
    }

    return Scaffold(
      appBar: appBarDinamica(),
      body: Center(
        child: ListView.separated(
            itemBuilder: (BuildContext context, int moeda) {
              return ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  leading: (selecionadas.contains(tabela[moeda]))
                      ? CircleAvatar(
                          child: Icon(Icons.check),
                        )
                      : SizedBox(
                          child: Image.asset(tabela[moeda].icone),
                          width: 40,
                        ),
                  title: Text(
                    tabela[moeda].nome,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Text(
                    real.format(tabela[moeda].preco),
                  ),
                  selected: selecionadas.contains(tabela[moeda]),
                  selectedTileColor: Colors.indigo[50],
                  onLongPress: () {
                    setState(() {
                      (selecionadas.contains(tabela[moeda]))
                          ? selecionadas.remove(tabela[moeda])
                          : selecionadas.add(tabela[moeda]);
                    });
                  });
            },
            padding: EdgeInsets.all(16),
            //Separador. Por enquanto vazio.
            separatorBuilder: (_, ___) => Divider(),
            itemCount: tabela.length), //Sempre especificar o tamanho da lista
      ),
    );
  }
}
