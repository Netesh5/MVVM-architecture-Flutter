import 'package:flutter/material.dart';
import 'package:mvvmapp/utils/routes/routes_name.dart';
import 'package:mvvmapp/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Log in ",
              style: TextStyle(fontSize: 25),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.home);
                },
                child: const Text("Log in"))
          ],
        ),
      ),
    );
  }
}
