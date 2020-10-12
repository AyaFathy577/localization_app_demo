import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization_app_demo/pages/home_page.dart';
import 'package:localization_app_demo/pages/onboard_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String phone;

  @override
  void didChangeDependencies() {
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => OnBoardPage(),
          ),
        ));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            bottom: 0,
            left: 100,
            right: 100,
            child: Container(
                height: 180,
                width: 180,
                padding: EdgeInsets.only(bottom: 10),
                child: Center(child: Text('Welcome on localization demo'),)

            ),
          ),
        ],
      ),
    );
  }
}
