import 'package:crypto_app/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: "assets/images/bitcoin.png",
        nome: "Bitcoin",
        sigla: "BTC",
        preco: 231298.47),
    Moeda(
        icone: "assets/images/ethereum.png",
        nome: "Ethereum",
        sigla: "ETH",
        preco: 17497.00),
    Moeda(
        icone: "assets/images/avalanche.png",
        nome: "Avalanche",
        sigla: "AVAX",
        preco: 477.78),
    Moeda(
        icone: "assets/images/cardano.png",
        nome: "Cardano",
        sigla: "ADA",
        preco: 8.38),
    Moeda(
        icone: "assets/images/shibainu.png",
        nome: "Shiba-inu",
        sigla: "SHB",
        preco: 0.0001573),
    Moeda(
        icone: "assets/images/solana.png",
        nome: "Solana",
        sigla: "SOL",
        preco: 759.32),
    Moeda(
        icone: "assets/images/stellar.png",
        nome: "Stellar Lumens",
        sigla: "XLM",
        preco: 1.40),
    Moeda(
        icone: "assets/images/tether.png",
        nome: "Tether",
        sigla: "THT",
        preco: 5.52),
    Moeda(
        icone: "assets/images/xmine.png",
        nome: "Xmine",
        sigla: "XMN",
        preco: 0.0001901),
    Moeda(
      icone: "assets/images/xrp.png",
      nome: "XRP",
      sigla: "XRP",
      preco: 4.16,
    ),
  ];
}
