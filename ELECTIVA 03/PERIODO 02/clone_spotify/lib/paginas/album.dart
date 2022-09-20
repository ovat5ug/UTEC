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
      backgroundColor: Color.fromARGB(255, 0, 0, 0), //color fondo album
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
    List songAlbumes = widget.canciones['songs']; //captura la canción
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                //dibuja espacio de "body"
                width: tamanho.width,
                height: 220, //altura que mostrara, la vista previa del album
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget
                        .canciones['img']), //captura la imagen de la canción
                    fit: BoxFit.cover,
                  ),
                  //color: primario,// da color para generar el contexto de vista previa en el album al seleccionar un album
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  //espaciado laterales entre el "title" y "suscribete"
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //recalcula el esacio entre los elementos
                  children: [
                    Text(
                      widget
                          .canciones['title'], //captura el titulo de la canción
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: blanco,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: gris,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding:
                            //const EdgeInsets.all(8.0),//equivalente a lo de abajo
                            const EdgeInsets.only(
                                left: 8, right: 8, top: 8, bottom: 8),
                        //efecto de texto coo boton
                        child: Text(
                          "Suscribete",
                          style: TextStyle(color: blanco),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                //convertimos el "Column" en Center y luego lo renombramos a un
                //"SingleChildScrollView" para configurar, la direcion del movimiento del scroll
                scrollDirection: Axis
                    .vertical, //se ordena que el movimiento del scroll sea vertical
                child: Column(
                  children: List.generate(songAlbumes.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                        bottom: 10,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              //A RenderFlex overflowed by 18974 pixels on the right
                              //width: (tamanho.width - 200) * 1,
                              width: 160,
                              height: 50,
                              //decoration: BoxDecoration(color: rojo),
                              child: Text(
                                //"${index + 1} - " genera el contador de las canciones del album
                                "${index + 1} - " + songAlbumes[index]['title'],
                                style: TextStyle(
                                  color: gris,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                              //A RenderFlex overflowed by 18974 pixels on the right
                              width: (tamanho.width - 200) * 0.87,
                              height: 50,
                              //decoration: BoxDecoration(color: blanco),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    songAlbumes[index]['duration'],
                                    style: TextStyle(
                                      color: gris,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: gris.withOpacity(0.8)),
                                    child: Center(
                                      child: Icon(
                                        Icons.play_arrow,
                                        color: rojo,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
//SafeArea(-.-), sacado de aqui y fue movido hacia afuera de la columna para que este
//apareciera como menu, arriba del contenido del album
            ],
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
    );
  }
}
