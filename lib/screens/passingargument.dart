import 'package:flutter/material.dart';
class PassArgumentsScreen extends StatelessWidget {
  static const routeName ='/passArguments';
  final String username;
  const PassArgumentsScreen({
    Key key,
    @required this.username,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Text(username,style: TextStyle(fontSize: 24,fontFamily: "Merriweather"),),

      ),
    );
  }
}