import 'package:flutter/material.dart';
import 'package:ecommerceapp/src/pages/elisting.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => EListing(),
    };
  }
}
