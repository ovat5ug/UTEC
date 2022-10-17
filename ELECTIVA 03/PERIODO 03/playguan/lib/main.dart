import 'package:flutter/material.dart';
import 'package:playguan/paginas/principal.dart';

void main() {
  runApp(const PlayGuan());
}

class PlayGuan extends StatefulWidget {
  const PlayGuan({super.key});

  @override
  State<PlayGuan> createState() => _PlayGuanState();
}

class _PlayGuanState extends State<PlayGuan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {"/": (context) => paginaPrincipal()},
    );
  }
}
