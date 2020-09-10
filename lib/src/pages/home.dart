import 'package:ecommerceapp/src/models/category.dart';
import 'package:ecommerceapp/src/models/post.dart';
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
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Text(
                      "Categories",
                      style: GoogleFonts.muli(
                          fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  child: getCategories(),
                ),
                Divider(),
                Column(
                  children: getPosts(context),
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
      padding: EdgeInsets.only(top: 20, left: 15),
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

  Widget getPost(BuildContext context, Post post, int index) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                          backgroundImage: post.user.profilePicture),
                    ),
                    Text(post.user.username),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> getPosts(BuildContext context) {
    List<Widget> posts = [];
    int index = 0;
    for (Post post in listPosts) {
      posts.add(getPost(context, post, index));
      index++;
    }
    return posts;
  }
}
