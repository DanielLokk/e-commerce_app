import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  final categories = Expanded(
    child: new Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        padding: new EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => new Stack(
          alignment: Alignment.topLeft,
          children: [
            new Container(
              width: 60.0,
              height: 60.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green[300],
                ),
                image: new DecorationImage(
                  image: new NetworkImage(
                    "https://www.creativefabrica.com/wp-content/uploads/2020/04/21/Tshirt-icon-black-thin-stripe-Graphics-3920786-1.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
          ],
        ),
      ),
    ),
  );

  Widget makeTitle(String title) {
    return new Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 25)),
        new Text(
          title,
          style: GoogleFonts.muli(fontSize: 30),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            padding: const EdgeInsets.only(left: 15),
            child: Text("Search bar"),
            decoration: BoxDecoration(color: Colors.black26),
          ),
          makeTitle("Categories"),
          categories,
        ],
      ),
    );
  }
}
