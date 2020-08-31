import 'package:ecommerceapp/src/themes/theme1.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget _icon(IconData icon, {Color color = Colors.amber}) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Icon(Icons.access_alarm),
    );
  }
}
