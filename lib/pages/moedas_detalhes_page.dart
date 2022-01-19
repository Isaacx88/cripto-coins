// ignore_for_file: prefer_const_constructors

import 'package:crypto_app/models/moeda.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoedasDetalhesPage extends StatefulWidget {
  final Moeda moeda;
  const MoedasDetalhesPage({Key? key, required this.moeda}) : super(key: key);

  @override
  _MoedasDetalhesPageState createState() => _MoedasDetalhesPageState();
}

class _MoedasDetalhesPageState extends State<MoedasDetalhesPage> {
  NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
  final _form = GlobalKey<FormState>();
  final _valor = TextEditingController();
  double quantidade = 0;

  comprar() {
    if (_form.currentState!.validate()) {
      //salvar a compra

      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Compra realizada com sucesso!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.moeda.nome),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 16, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(widget.moeda.icone),
                  width: 50,
                ),
                Container(
                  width: 10,
                ),
                Text(
                  real.format(widget.moeda.preco),
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),

          //Se a quantidade for maior que zero, mostra a sizedbox com o valor. Caso contrário, apenas um container vazio.
          (quantidade > 0)
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    child: Text(
                      "$quantidade ${widget.moeda.sigla}",
                      style: TextStyle(fontSize: 20, color: Colors.black54),
                    ),
                    margin: EdgeInsets.fromLTRB(0, 24, 0, 24),
                    alignment: Alignment.center,
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(bottom: 24),
                ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _form,
              child: TextFormField(
                controller: _valor,
                style: TextStyle(fontSize: 22),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Valor",
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  suffix: Text(
                    "reais",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Informe o valor da compra.";
                  } else if (double.parse(value) < 50) {
                    return "O valor de compra mínima é R\$ 50,00";
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    quantidade = (value.isEmpty)
                        ? 0
                        : double.parse(value) / widget.moeda.preco;
                  });
                },
              ),
            ),
          ),

          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.fromLTRB(12, 24, 12, 12),
            child: ElevatedButton(
              onPressed: comprar,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.check),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Comprar",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
