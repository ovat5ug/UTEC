import 'package:flutter/material.dart';
import 'home/principal.dart';

class Contenedores extends StatelessWidget {
  const Contenedores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contenedores",
      home: Principal(),
    );
  }
}
