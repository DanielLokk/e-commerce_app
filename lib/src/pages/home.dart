import 'dart:html';

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
        child: SafeArea(
          child: Column(
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
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 0.0),
                    itemCount: listPosts.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        getPost(context, listPosts[index], index),
                  ),
                ],
              ),
            ],
          ),
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

  List<Widget> getPosts(BuildContext context) {
    List<Widget> posts = [];
    int index = 0;
    for (Post post in listPosts) {
      posts.add(getPost(context, post, index));
      index++;
    }
    return posts;
  }

  Widget getPost(BuildContext context, Post post, int index) {
    return Container(
      decoration: BoxDecoration(color: Colors.black12),
      padding: EdgeInsets.all(50),
      child: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1.1,
                child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        alignment: FractionalOffset.topCenter,
                        fit: BoxFit.cover,
                        image: post.image),
                  ),
                ),
              ),
              Text("Burger")
            ],
          ),
        ],
      ),
    );
    /* return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            repeat: ImageRepeat.noRepeat,
                            image: AssetImage("lib/src/assets/product1.jpg")),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Text("column2"),
              )
            ],
          ),
        ],
      ),
    ); */
  }
}
