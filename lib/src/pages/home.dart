import 'package:ecommerceapp/src/models/category.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/src/models/global.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "ECOMMERCE",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 100,
                  child: getCategories(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getCategories() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: getListCategories(),
      padding: EdgeInsets.only(top: 20),
    );
  }

  List<Widget> getListCategories() {
    List<Widget> listCategories = [];
    for (Category category in categories) {
      listCategories.add(createCategory(category));
    }
    return listCategories;
  }

  Widget createCategory(Category category) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            child: Stack(
              alignment: Alignment(0, 0),
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ),
                Container(
                  height: 57,
                  width: 57,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: category.icon,
                  ),
                ),
                FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Text(
            category.name,
            style: GoogleFonts.muli(),
          )
        ],
      ),
    );
  }
}
