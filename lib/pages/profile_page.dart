import 'package:flutter/material.dart';
import 'package:localization_app_demo/localization/language_constants.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTranslated(context, 'profile')),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(getTranslated(context, 'my_profile')),
        ),
      ),
    );
  }
}