import 'package:flutter/material.dart';

class SplashScreenBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Align(
          alignment: FractionalOffset(0.5, 0.0),
          child: Container(
            margin: EdgeInsets.only(top: 110.0),
            child: Image.asset('assets/images/logo.png'),
          ),
        ),
      ),
      flex: 1,
    );
  }
}
