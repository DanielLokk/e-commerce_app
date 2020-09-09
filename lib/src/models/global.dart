import 'package:ecommerceapp/src/models/category.dart';
import 'package:ecommerceapp/src/models/post.dart';
import 'package:ecommerceapp/src/models/user.dart';
import 'package:flutter/material.dart';

User user =
    new User("username", AssetImage("lib/src/assets/profile1.jpg"), [], []);
Post post1 = new Post(AssetImage("lib/src/assets/product1.jpg"), user,
    "description", DateTime.now(), [], [], false, false);
List<Category> categories = [
  new Category("Men", [post1], AssetImage("lib/src/assets/tshirt1.png")),
  new Category("Women", [post1], AssetImage("lib/src/assets/lipstick.png")),
  new Category("Men", [post1], AssetImage("lib/src/assets/tshirt1.png")),
  new Category("Women", [post1], AssetImage("lib/src/assets/lipstick.png")),
  new Category("Men", [post1], AssetImage("lib/src/assets/tshirt1.png")),
  new Category("Women", [post1], AssetImage("lib/src/assets/lipstick.png")),
];
