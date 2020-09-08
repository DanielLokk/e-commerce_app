import 'package:ecommerceapp/src/pages/categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EListing extends StatefulWidget {
  @override
  _EListingState createState() => _EListingState();
}

class _EListingState extends State<EListing> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? new SizedBox(
                child: new Categories(),
                height: deviceSize.height * 0.15,
              )
            : Column());
  }

  /* @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(padding: new EdgeInsets.only(top: 120)),
          makeTitle("Categories"),
          Padding(padding: EdgeInsets.symmetric(vertical: 10)),
          categories,
          makeTitle("Trending"),
        ],
      ),
    );
  } */
}
