import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playguan/paginas/principal.dart';
import 'package:playguan/paginas/variablesGoblales.dart';

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
  void initState() {
    //oculta la barra de estado y los botones de velocidad
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: azulPrincipal),
      routes: {"/": (context) => paginaPrincipal()},
    );
  }
}
