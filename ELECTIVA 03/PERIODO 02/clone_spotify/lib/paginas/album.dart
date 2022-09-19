//captura evento de toque y carga contenido al precionar algun "album"
import 'package:flutter/material.dart';
import 'package:clone_spotify/temas/colores.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:clone_spotify/paginas/contenedores.dart';
import 'package:clone_spotify/paginas/principal.dart';
import 'package:clone_spotify/json/canciones_json.dart';

class AlbumesPage extends StatefulWidget {
  const AlbumesPage({super.key});

  @override
  State<AlbumesPage> createState() => _AlbumesPageState();
}

class _AlbumesPageState extends State<AlbumesPage> {
  final dynamic canciones = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //este apartado es el que se encarga de retornar la hoja del album

        );
  }
}
