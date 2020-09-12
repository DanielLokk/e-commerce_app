import 'package:flutter/material.dart';

import 'comment.dart';
import 'user.dart';

class Post {
  AssetImage image;
  String description;
  User user;
  List<Comment> comments;
  List<User> likes;
  DateTime date;
  bool isLiked;
  bool isSaved;

  Post(this.image, this.user, this.description, this.date, this.likes,
      this.comments, this.isLiked, this.isSaved);
}
