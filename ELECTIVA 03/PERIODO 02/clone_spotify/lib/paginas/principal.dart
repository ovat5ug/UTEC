import 'package:flutter/material.dart';
import 'package:clone_spotify/temas/colores.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:clone_spotify/paginas/contenedores.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int menu_activo = 0;
  @override /* se mueve lo siguiente a contenedores*/
  Widget build(BuildContext context) {
    return Scaffold(
      //dibuja el fondo
      backgroundColor: Colors.black,
      //bottomNavigationBar: spotFooter(), // se quita esta invocacion porque
      // no se encuentra aqui el widget del contenedor de este estado "spotFooter(),"
      body: Contenedores(), //"body: spotBody()," se cambia
    );
  }
//sin la referencia de la libreria de contenedores, aqui iba el widget spotBody() {}
//sin la referencia de la libreria de contenedores, aqui iba el widget spotFooter() {}

}
