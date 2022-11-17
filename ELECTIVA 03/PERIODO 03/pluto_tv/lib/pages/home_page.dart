import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pluto_tv/json/home_json.dart';
import 'package:pluto_tv/pages/video_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            width: size.height - 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/banner.webp"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.black.withOpacity(0.85),
                            Colors.black.withOpacity(0),
                          ],
                              end: Alignment.bottomCenter,
                              begin: Alignment.bottomCenter)),
                    ),
                    Container(
                      height: 500,
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/title_img.webp",
                            width: 300,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Emocionante - Drama de Ciencia Ficción - Aventura de Ciencia Ficción",
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Mi Lista",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => VideoDetailPage(
                                      videoUrl: "assets/videos/video_1.mp4",
                                    )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 13, left: 8, top: 2, bottom: 2),
                          child: Row(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Play",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.info_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Información",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Mi Lista en Pluto TV",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            children: List.generate(mylist.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => VideoDetailPage(
                                            videoUrl:
                                                "assets/videos/video_1.mp4",
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(mylist[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          );
                        })),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Popular en Pluto TV",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            children:
                                List.generate(popularList.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => VideoDetailPage(
                                            videoUrl:
                                                "assets/videos/video_2.mp4",
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(popularList[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          );
                        })),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Tendencia en Pluto TV",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            children:
                                List.generate(trendingList.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => VideoDetailPage(
                                            videoUrl:
                                                "assets/videos/video_1.mp4",
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(trendingList[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          );
                        })),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Originales de Pluto TV",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            children:
                                List.generate(originalList.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => VideoDetailPage(
                                            videoUrl:
                                                "assets/videos/video_1.mp4",
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 165,
                              height: 300,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage(originalList[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          );
                        })),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Anime",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                            children: List.generate(animeList.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => VideoDetailPage(
                                            videoUrl:
                                                "assets/videos/video_1.mp4",
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 110,
                              height: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(animeList[index]['img']),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          );
                        })),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: SafeArea(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        "assets/images/logo.ico",
                        width: 35,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.collections_bookmark,
                              color: Colors.white,
                              size: 28,
                            ),
                            onPressed: null),
                        IconButton(
                            icon: Image.asset(
                              "assets/images/profile.jpeg",
                              width: 26,
                              height: 26,
                              fit: BoxFit.cover,
                            ),
                            onPressed: null)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Series de TV",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Peliculas",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Text(
                          "Categorias",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                )
              ]),
            ),
          ),
        ],
      )),
    );
  }
}
