import 'package:ecommerceapp/models/category.dart';
import 'package:ecommerceapp/pages/feed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerceapp/models/global.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    final Category category = ModalRoute.of(context).settings.arguments;
    int index = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[300],
        title: Title(
          color: Colors.black,
          child: Text(
            category.name,
            style: GoogleFonts.muli(fontSize: 20.0),
          ),
        ),
      ),
      body: Column(
        children: [
          FeedState().createFeed(context, listPosts),
        ],
      ),
    );
  }
}
