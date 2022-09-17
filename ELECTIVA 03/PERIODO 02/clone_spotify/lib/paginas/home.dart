/*pagina que recibira la ordenes de los clis de los menus*/
import 'package:flutter/material.dart';
import 'package:clone_spotify/temas/colores.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:clone_spotify/paginas/contenedores.dart';
import 'package:clone_spotify/paginas/principal.dart';
import 'package:clone_spotify/json/canciones_json.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: negro, //color de fondo de "home"
      appBar: barraSpotApp(),
      body: cuerpoSpot(),
    );
  }

  barraSpotApp() {
    return AppBar(
      backgroundColor: Colors.red, //colo de fondo barra superior de "home"
      elevation: 10,
      title: Padding(
        //padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.only(
            left: 8, right: 8), //espaciado derecho e izquierdo
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "prueba",
              style: TextStyle(
                  fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.list_outlined)
          ],
        ),
      ),
    );
  }

  cuerpoSpot() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, //alineado desde que inicia aplicacion
        children: [
          SingleChildScrollView(
            //convertimos el padding en widget y luego lo renombramos a un
            //"SingleChildScrollView" para configurar, renderizacion
            scrollDirection: Axis.horizontal,
            //alineacion del scroll a horizontal para evitar exeder del pixelaje del dsipositivo
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                  /*children: [//para que no retorne dentro de otra columna la configuracion creada en "canciones_json"
                  Column(
                    children: [Text("data")],
                  )
                ],*/
                  children: List.generate(song_type_1.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25), //espaciado del arreglo

                  child: GestureDetector(
                    //convertimos el padding en widget y luego lo renombramos a un
                    //"GestureDetector" para configurar, la deteccion de cuando se pulsa a un elemento
                    onTap: () {
                      //captura evento cuando el dedo presiona la pantalla
                      setState(() {
                        menu_activo = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .center, //alineacion desde el inicio
                      children: [
                        Text(
                          song_type_1[index],
                          style: TextStyle(
                              fontSize: 15,
                              color: menu_activo == index
                                  ? primario
                                  : Color.fromARGB(220, 187, 206, 189),
                              //"Color.fromARGB()," asignado a la pestaña inactiva (gris)
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                            height:
                                3), //crea un tamaño de caja de un espacio det.
                        menu_activo == index
                            ? Container(
                                //dibuja el contenedor cuando esta activo
                                //tamaño del contenedor
                                width: 20,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: menu_activo == index
                                      ? Colors.lightBlueAccent
                                      : primario,
                                  //"Colors.lightBlueAccent," asignado a la pestaña activa (celeste)
                                  borderRadius: BorderRadius.circular(
                                      5), //crea un borfe tipo subrayado
                                ),
                              )
                            : Container(),
                        //":Container()," es necesario crear una parte a evaluar que sea fañsa es decir en este caso un contenedor vacio
                        //para cuando no este posicionado el touch, todo lo demas este sin color
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            //convertimos el "Padding" en Center y luego lo renombramos a un
            //"SingleChildScrollView" para configurar, la direcion del movimiento del scroll
            scrollDirection: Axis
                .horizontal, //se ordena que el movimiento del scroll sea horizontal
            child: Padding(
              //convertimos el "Row" en un "Padding" para configurar,
              //un espaciado al contenedor a un elemento
              padding: const EdgeInsets.only(
                left: 40, //padding hacia la izquierda de 40px
              ),
              child: Row(
                children: List.generate(10, (index) {
                  //genera una lista de "N" espacios
                  return Padding(
                    //convertimos el return "GestureDetector" en un
                    //"Padding" para configurar, un espaciado al contenedor a un elemento
                    padding: const EdgeInsets.only(
                      right: 40, //padding hacia la derecha de 40px
                    ),
                    child: GestureDetector(
                      //convertimos el return "Column" en widget y luego lo renombramos a un
                      //"GestureDetector" para configurar, la deteccion de cuando se pulsa a un elemento
                      onTap: () {
                        //captura evento cuando el dedo presiona la pantalla
                        setState(() {
                          menu_activo = index;
                        });
                      },

                      child: Column(
                        children: [
                          Container(
                            //contendor que da tamaño a la caja
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(color: primario),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
/*
  Widget barraSpotApp() {
    return AppBar(
      backgroundColor: negro,
      elevation: 10,
    );
  }
*/
}
