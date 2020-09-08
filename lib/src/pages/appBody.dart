import 'package:ecommerceapp/src/pages/elisting.dart';
import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: EListing(),
        ),
      ],
    );
  }
}
