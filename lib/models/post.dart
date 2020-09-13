import 'package:flutter/material.dart';

import 'comment.dart';
import 'user.dart';

class Post {
  String name;
  AssetImage image;
  String description;
  User user;
  List<Comment> comments;
  List<User> likes;
  DateTime date;
  bool isLiked;
  bool isSaved;
  String price;

  Post(this.price, this.name, this.image, this.user, this.description,
      this.date, this.likes, this.comments, this.isLiked, this.isSaved);
}
