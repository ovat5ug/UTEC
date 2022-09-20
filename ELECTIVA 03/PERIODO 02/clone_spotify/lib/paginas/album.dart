//captura evento de toque y carga contenido al precionar algun "album"
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:clone_spotify/temas/colores.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:clone_spotify/paginas/contenedores.dart';
import 'package:clone_spotify/paginas/principal.dart';
import 'package:clone_spotify/json/canciones_json.dart';

import '../json/canciones_json.dart';

class AlbumesPage extends StatefulWidget {
  const AlbumesPage({Key? key, this.canciones}) : super(key: key);
  final dynamic canciones; //se mueve aqui para que sean interpretadas
  @override
  State<AlbumesPage> createState() => _AlbumesPageState();
}

class _AlbumesPageState extends State<AlbumesPage> {
  //final dynamic canciones = 0;//se elimina final porque no genera inicializacion
  //dynamic canciones = 0;// se mueve por el orden de lectura
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //este apartado es el que se encarga de retornar la hoja del album
      backgroundColor: Color.fromARGB(255, 2, 1, 48), //color fondo album
      body: cuerpoAlbum(), //formar cuerpo
    );
  }

  //metodo o accion es cuando no retorna un valor
/*cuerpoAlbum() {//metodo}*/
  //widget es cuando retorna un valor
  //cuerpo del album
  Widget cuerpoAlbum() {
    //metodo
    var tamanho = MediaQuery.of(context).size;
    List songAlbumes = widget.canciones['songs'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                //dibuja espacio de "body"
                width: tamanho.width,
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.canciones['img']),
                    fit: BoxFit.cover,
                  ),
                  //color: primario,// da color para generar el contexto de vista previa en el album al seleccionar un album
                ),
              ),
              SafeArea(
                //convertimos el row en widget y luego lo renombramos a un
                //"SafeArea" para configurar, en un area segura
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(FeatherIcons.umbrella),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.apple),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(FeatherIcons.moreVertical),
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
