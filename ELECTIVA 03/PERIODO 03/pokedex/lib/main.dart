import 'package:flutter/material.dart';
import 'package:pokedex/paginas/home.dart';

void main() {
  runApp(const pokeDesk());
}

class pokeDesk extends StatelessWidget {
  const pokeDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: principalHome(),
    );
  }
}
