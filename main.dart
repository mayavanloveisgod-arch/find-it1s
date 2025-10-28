import 'package:find_it/Introduction.dart';
import 'package:find_it/FindHome.dart';
import 'package:find_it/LoginPage.dart';
import 'package:find_it/Introduction.dart';
import 'package:find_it/FindSplase.dart';
import 'package:find_it/LocationTask.dart';
import 'package:find_it/SigninPage.dart';
import 'package:find_it/Logout.dart';
import 'package:find_it/googleMap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}




