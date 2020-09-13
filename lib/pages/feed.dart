import 'package:ecommerceapp/models/post.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedState {
  Widget createFeed(BuildContext context, List<Post> listPosts) {
    return Container(
      height: MediaQuery.of(context).size.height - 250,
      child: GridView.builder(
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        itemBuilder: (context, index) =>
            getPost(context, listPosts[index], index),
        shrinkWrap: true,
        itemCount: listPosts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 0,
        ),
      ),
    );
  }

  Widget getPost(BuildContext context, Post post, int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1.5,
                  child: Container(
                    decoration: BoxDecoration(
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
                post.price,
                style: GoogleFonts.teko(
                  fontSize: 25,
                ),
              ),
              Text(
                post.name,
                style: GoogleFonts.teko(fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
