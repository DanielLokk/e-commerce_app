import 'package:ecommerceapp/src/themes/theme1.dart';
import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget categories() {
    return Expanded(
      child: new ListView.builder(
        padding: new EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => new Stack(
          alignment: Alignment.topLeft,
          children: [
            new Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green[300]),
                  image: new DecorationImage(
                      image: new NetworkImage(
                          "https://cdn1.iconfinder.com/data/icons/women-s-clothing-3-line/64/female_clothes-05-512.png"),
                      fit: BoxFit.fill)),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            )
          ],
        ),
      ),
    );
  }

  Widget makeTitle(String title) {
    return new Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 25)),
        new Text(title, style: GoogleFonts.muli(fontSize: 30)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(padding: new EdgeInsets.only(top: 120)),
          makeTitle("Categories"),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          categories(),
          makeTitle("Trending"),
        ],
      ),
    );
  }
}
