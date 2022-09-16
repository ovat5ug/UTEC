import 'package:clone_spotify/paginas/home.dart';
import 'package:flutter/material.dart';
import 'package:clone_spotify/temas/colores.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:clone_spotify/paginas/principal.dart';
import 'package:clone_spotify/paginas/home.dart';

class Contenedores extends StatefulWidget {
  const Contenedores({super.key});

  @override
  State<Contenedores> createState() => _ContenedoresState();
}

class _ContenedoresState extends State<Contenedores> {
  @override
  //Widget build(BuildContext context) {
//se genera este widget y se pone aqui el desarollo del codigo, que afecta a principal con el "Widget spotFooter() {}"
  //return Container();
  Widget build(BuildContext context) {
    //se ubica aqui el BuildContext
    return Scaffold(
      //dibuja el fondo
      backgroundColor: Colors.black,
      bottomNavigationBar: spotFooter(),
      body: spotBody(),
    );
  }

  Widget spotBody() {
    return IndexedStack(index: menu_activo, children: [
      //"index: menu_activo," hace que reconozca en que posicion esta el arreglo y al hacer clic
      // en uno de los iconos devuelve el texto o la actividad en el orden del arreglo
      Home(),
      /*
      Center(
        child: Text(
          "Principal",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),*/
      Center(
        child: Text(
          "Libreria",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Busqueda",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),
      Center(
        child: Text(
          "Configuración",
          style: TextStyle(
              fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }

  Widget spotFooter() {
    const List items = [
      FeatherIcons.home,
      FeatherIcons.key,
      FeatherIcons.search,
      FeatherIcons.airplay,
    ];
    return Container(
      height: 40,
      decoration: BoxDecoration(color: Color.fromARGB(255, 150, 5, 5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(4, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    menu_activo = index;
                  });
                },
                icon: Icon(
                  items[index], //Icons.home,
                  color: menu_activo == index ? primario : blanco,
                  //si menu_activo es index=1 hacer el color primario, sino hacer color blanco
                  //color: Colors.white,
                ));
          }),
        ),
      ),
    );
  }
}
