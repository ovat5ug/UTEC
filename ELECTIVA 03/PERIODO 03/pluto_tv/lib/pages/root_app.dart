import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pluto_tv/json/root_app_json.dart';
import 'package:pluto_tv/pages/coming_soon_page.dart';
import 'package:pluto_tv/pages/downloads_page.dart';
import 'package:pluto_tv/pages/home_page.dart';
import 'package:pluto_tv/pages/search_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody(){
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        ComingSoonPage(),
        SearchPage(),
        DownloadsPage()
      ],
    );
  }

  Widget getFooter(){
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index){
            return  GestureDetector(
              onTap: (){
                setState(() {
                  activeTab = index;
                });
              },
              child: Column(
                children: [
                  Icon(
                    items[index]['icon'], 
                    color: Colors.white,
                  ),
                  SizedBox(height: 5,),
                  Text(items[index]['text'], style: TextStyle(color: Colors.white, fontSize: 10),
                  )
                ],
              ),
            );
          })  
        ),
      ),
    );
  }
}