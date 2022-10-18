import 'package:flutter/material.dart';
import 'package:playguan/paginas/variablesGoblales.dart';
import 'package:flutter/painting.dart';

class nuevosWidget extends StatelessWidget {
  const nuevosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Películas Nuevas",
                style: TextStyle(
                  color: blanco,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Ver Todo",
                style: TextStyle(
                  color: gris,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          //espacio entre contenedores
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i <= 6; i++)
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/img/caratulas/pelicula/estrenos/pelicula0$i.jpg",
                      height: 180,
                      width: 300,
                      fit: BoxFit.cover, //proporciona una vista d img tipo 16:9
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
