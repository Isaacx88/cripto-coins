import 'package:crypto_app/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: "assets/images/bitcoin.png",
        nome: "Bitcoin",
        sigla: "BTC",
        preco: 164603.000),
    Moeda(
        icone: "assets/images/ethereum.png",
        nome: "Ethereum",
        sigla: "ETH",
        preco: 1603.000),
    Moeda(
        icone: "assets/images/avalanche.png",
        nome: "Avalanche",
        sigla: "AVAX",
        preco: 23803.000),
    Moeda(
        icone: "assets/images/cardano.png",
        nome: "Cardano",
        sigla: "ADA",
        preco: 21.000),
    Moeda(
        icone: "assets/images/shibainu.png",
        nome: "Shiba-inu",
        sigla: "SHB",
        preco: 15603.000),
    Moeda(
        icone: "assets/images/solana.png",
        nome: "Solana",
        sigla: "SOL",
        preco: 2343.000),
    Moeda(
        icone: "assets/images/stellar.png",
        nome: "Stellar Lumens",
        sigla: "XLM",
        preco: 164603.000),
    Moeda(
        icone: "assets/images/tether.png",
        nome: "Tether",
        sigla: "THT",
        preco: 23562.000),
    Moeda(
        icone: "assets/images/xmine.png",
        nome: "Xmine",
        sigla: "XMN",
        preco: 1.345),
    Moeda(
      icone: "assets/images/xrp.png",
      nome: "XRP",
      sigla: "XRP",
      preco: 44513.000,
    ),
  ];
}
