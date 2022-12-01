import 'package:flutter/material.dart';
import 'package:mvvmapp/utils/routes/routes.dart';
import 'package:mvvmapp/utils/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteName.login,
      onGenerateRoute: Routes.generateRoutes,
    );
  }
}
