import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mvvmapp/utils/routes/routes_name.dart';
import 'package:mvvmapp/view/home_screen.dart';
import 'package:mvvmapp/view/login_screen.dart';

class Routes {
  static MaterialPageRoute generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteName.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      default:
        return MaterialPageRoute(builder: ((context) {
          return const Scaffold(
            body: Text("No Routes"),
          );
        }));
    }
  }
}
