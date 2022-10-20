import 'package:flutter/material.dart';
import 'package:legacy_buttons/LegacyRaisedButton.dart';
import 'package:pokedex/paginas/gif.dart';
import 'package:pokedex/paginas/home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  runApp(pokeDesk());
}

class pokeDesk extends StatelessWidget {
  //const pokeDesk({super.key});
  late Future<List<Gif>> _listadegif;

  Future<List<Gif>> _getGifs() async {
    final response = await http.get(Uri.parse(
        "https://api.giphy.com/v1/gifs/trending?api_key=sw1fM8if1R79iCYYzGzG4QvF4ix8Mp7O&limit=10&rating=g"));
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      throw Exception("Falla al gerenar el JSON");
    }
    return _listadegif;
  }

  @override
  void initState() {
    _getGifs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: principalHome(),
      title: 'Api Rest',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material Appi'),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: LegacyRaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  color: Color.fromARGB(255, 88, 83, 67),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Text(
                    'ingresar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
            //child: Container(child: Text("saludos")),
          )),
    );
  }
}
