import 'package:ecommerceapp/models/category.dart';
import 'package:ecommerceapp/models/post.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/models/global.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double itemHeight = 200;
  @override
  Widget build(BuildContext context) {
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
                      Padding(padding: EdgeInsets.only(left: 25)),
                      Text(
                        "Categories",
                        style: GoogleFonts.muli(
                            fontWeight: FontWeight.bold, fontSize: 27),
                      ),
                    ],
                  ),
                  Container(
                    height: 120,
                    child: getCategories(),
                  ),
                  Divider(),
                  Container(
                    height: MediaQuery.of(context).size.height - 250,
                    child: GridView.builder(
                      physics: ClampingScrollPhysics(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      itemBuilder: (context, index) =>
                          getPost(context, listPosts[index], index),
                      shrinkWrap: true,
                      itemCount: listPosts.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                      ),
                    ),
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
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.1,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        alignment: FractionalOffset.center,
                        fit: BoxFit.cover,
                        //image: post.image
                        image: post.image,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 5)),
              Text(
                "T-Shirt",
                style: GoogleFonts.muli(fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
