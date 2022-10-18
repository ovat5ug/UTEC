import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
//"flutter pub add http" instalar libreria para que busque el valor de los enlaces "http"
import 'package:http/http.dart' as http;
import 'dart:convert';

class principalHome extends StatefulWidget {
  const principalHome({super.key});

  @override
  State<principalHome> createState() => _principalHomeState();
}

class _principalHomeState extends State<principalHome> {
  var pokeApi =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  late List pokeDesk;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
          child: Text("Presione boton"),
          onPressed: () {
            datosPokemon();
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    if (mounted) {
      datosPokemon();
    }
  }

  void datosPokemon() {
    void main(List<String> arguments) async {
      // This example uses the Google Books API to search for books about http.
      // https://developers.google.com/books/docs/overview
      var url =
          //Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'}); sustitucion de campos
          Uri.https('raw.githubusercontent.com',
              '/Biuni/PokemonGO-Pokedex/master/pokedex.json');
      http.get(url).then((value) {
        if (value.statusCode == 200) {
          //print(value.body)
          var pokeJsonData = jsonDecode(value.body);
          //print(pokeJsonData);
          pokeDesk = pokeJsonData['pokemon'];
          //print(pokeDesk[0]['name']);
          setState(() {});
        }
      });
    }
  }
}
