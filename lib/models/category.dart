import 'package:ecommerceapp/models/post.dart';
import 'package:flutter/material.dart';

class Category {
  String name;
  List<Post> posts;
  AssetImage icon;

  Category(this.name, this.posts, this.icon);
}
