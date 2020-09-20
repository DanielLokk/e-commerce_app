import 'package:ecommerceapp/models/category.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60),
          ),
          IconButton(
              icon: Icon(Icons.plus_one),
              onPressed: () {
                setState(() {
                  index++;
                });
              }),
          IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              index++;
              Navigator.pop(context);
            },
          ),
          Center(
            child: Text(
              index.toString(),
            ),
          )
        ],
      ),
    );
  }
}
