import 'post.dart';
import 'package:flutter/material.dart';

class User {
  String username;
  List<Post> posts;
  AssetImage profilePicture;
  List<Post> savedPosts;

  User(this.username, this.profilePicture, this.posts, this.savedPosts);
}
