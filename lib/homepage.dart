import 'package:flutter/material.dart';
import 'package:login_page/delivery.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: RaisedButton(
              child: Text('Welcome!'),
              onPressed: () => {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Shop(),
                        )),
                  }),
        ),
      ),
    );
  }
}
