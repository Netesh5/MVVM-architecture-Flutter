import 'package:flutter/material.dart';
import 'package:mvvmapp/view_model/shared_perferences.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  SharedPreference().sp();
                },
                child: const Text("Shared Prefrences"))
          ],
        ),
      ),
    );
  }
}
