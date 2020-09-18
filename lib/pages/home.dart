import 'package:ecommerceapp/models/category.dart';
import 'package:ecommerceapp/pages/feed.dart';
import 'package:ecommerceapp/pages/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/models/global.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return new Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Column(
                children: [
                  Row(
                    children: [
                      SearchBar(),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 140)),
                      getProfileAvatar(context),
                    ],
                  ),
                  header("Categories"),
                  Container(
                    height: 120,
                    child: getCategories(),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  header("Trending"),
                  Divider(),
                  FeedState().createFeed(context, listPosts),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget header(String str) {
    return Row(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 12.5)),
        Text(
          str,
          style: GoogleFonts.muli(fontWeight: FontWeight.bold, fontSize: 27),
        ),
      ],
    );
  }

  Widget getCategories() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: getListCategories(),
      padding: EdgeInsets.only(top: 20, left: 15),
    );
  }

  List<Widget> getListCategories() {
    List<Widget> listCategories = [];
    int index = 0;
    for (Category category in categories) {
      index++;
      listCategories.add(createCategory(category, index));
    }
    return listCategories;
  }

  Widget createCategory(Category category, int index) {
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
                  heroTag: "btn$index",
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/categoryPage',
                      arguments: category,
                    );
                  },
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

  Widget getProfileAvatar(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      child: Stack(
        alignment: Alignment(0, 0),
        children: [
          Container(
            height: 55,
            width: 55,
            child: CircleAvatar(
              backgroundColor: Colors.black26,
            ),
          ),
          Container(
            height: 52,
            width: 52,
            child: CircleAvatar(
              backgroundImage: AssetImage("lib/assets/profile1.jpg"),
            ),
          ),
          FloatingActionButton(
            heroTag: "profile",
            elevation: 0,
            backgroundColor: Colors.transparent,
            onPressed: () {
              /* Navigator.pushNamed(
                context,
                '/categoryPage',
                arguments: category,
              ); */
            },
          ),
        ],
      ),
    );
  }
}
