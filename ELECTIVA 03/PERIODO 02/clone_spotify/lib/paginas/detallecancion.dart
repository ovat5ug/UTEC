import 'package:flutter/material.dart';
import 'package:clone_spotify/paginas/inicio.dart';
import 'package:clone_spotify/paginas/principal.dart';

class MusicaDetalle extends StatefulWidget {
  final String img;
  final String title;
  final String description;
  //final String song_count;
  //final String date;
  final String color;
  final String song_url;
  //final String songs;

  const MusicaDetalle({
    super.key,
    required this.img,
    required this.title,
    required this.description,
    //required this.song_count,
    //required this.date,
    required this.color,
    required this.song_url,
    //required this.songs
  });
  //const MusicaDetalle({Key? key}) : super(key: key);

  @override
  State<MusicaDetalle> createState() => _MusicaDetalleState();
}

class _MusicaDetalleState extends State<MusicaDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
