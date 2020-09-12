import 'package:ecommerceapp/models/user.dart';

class Comment {
  String comment;
  User user;
  DateTime dateOfComment;
  bool isLiked;
  Comment(this.user, this.comment, this.dateOfComment, this.isLiked);
}
