import 'package:flutter/material.dart';
import 'package:login_page/delivery.dart';
import 'package:login_page/login_page.dart';
import 'package:login_page/widgets/Carousel.dart';
import 'package:login_page/widgets/List.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Page',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(),
    );
  }
}
