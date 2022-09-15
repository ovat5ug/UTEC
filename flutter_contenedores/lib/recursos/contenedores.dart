import 'package:flutter/material.dart';
import 'package:flutter_contenedores/recursos/home/principal.dart';

//este "StatelessWidget" es el que no va a variar
class Contenedores extends StatelessWidget {
  const Contenedores({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contenedores",
      home:
          Principal(), //llama al metodo principal que si va a cambiar su estado
    );
  }
}
