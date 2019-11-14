import 'package:flutter/material.dart';

class SplashScreenCaption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: 28.0),
        child: Text(
          'Rent Smarter, Live Easier',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        padding: EdgeInsets.symmetric(vertical: 18.0),
        constraints: BoxConstraints(
          maxWidth: 330.0,
        ),
      ),
      flex: 0,
    );
  }
}
