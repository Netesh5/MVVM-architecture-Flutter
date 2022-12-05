import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  sp() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("Date", "${DateTime.now()}");
    sharedPreferences.setInt("Roll no", 11);
    debugPrint(sharedPreferences.getString("Date"));
    debugPrint(sharedPreferences.getInt("Roll no").toString());
  }
}
