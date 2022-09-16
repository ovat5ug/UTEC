import 'package:clone_spotify/paginas/principal.dart';
import 'package:flutter/material.dart';
import 'contenedores.dart';

class SpotifyClone extends StatelessWidget {
  const SpotifyClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
}
