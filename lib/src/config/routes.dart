import 'package:flutter/material.dart';
import 'package:ecommerceapp/src/pages/main_page.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(),
    };
  }
}
