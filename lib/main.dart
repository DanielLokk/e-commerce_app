import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/themes/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ecommerce",
      theme: MyAppTheme.theme1.copyWith(
        textTheme: GoogleFonts.muliTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: 'MainPage',
    );
  }
}
