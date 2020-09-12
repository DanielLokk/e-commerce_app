import 'package:ecommerceapp/models/category.dart';
import 'package:ecommerceapp/models/post.dart';
import 'package:ecommerceapp/models/user.dart';
import 'package:flutter/material.dart';

User user = new User("username", AssetImage("lib/assets/profile1.jpg"), [], []);

Post post1 = new Post(AssetImage("lib/assets/post-image.jpg"), user,
    "description", DateTime.now(), [], [], false, false);

List<Category> categories = [
  new Category("Men", [post1], AssetImage("lib/assets/tshirt1.png")),
  new Category("Women", [post1], AssetImage("lib/assets/lipstick.png")),
  new Category("Men", [post1], AssetImage("lib/assets/tshirt1.png")),
  new Category("Women", [post1], AssetImage("lib/assets/lipstick.png")),
  new Category("Men", [post1], AssetImage("lib/assets/tshirt1.png")),
  new Category("Women", [post1], AssetImage("lib/assets/lipstick.png")),
];

List<Post> listPosts = [
  post1,
  post1,
  post1,
  post1,
  post1,
  post1,
  post1,
  post1,
];
