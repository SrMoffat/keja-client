import 'package:flutter/material.dart';

import '../widgets/splash-screen/shader.dart';
import '../widgets/splash-screen/banner.dart';
import '../widgets/splash-screen/caption.dart';
import '../widgets/splash-screen/signup-btn.dart';
import '../widgets/splash-screen/google-btn.dart';
import '../widgets/splash-screen/login-btn.dart';

class SplashScreen extends StatelessWidget {
  final Color gradientStart = Colors.transparent;
  final Color gradientEnd = Color(0xff002116);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          SplashScreenShader(),
          Column(
            children: <Widget>[
              SplashScreenBanner(),
              SplashScreenCaption(),
              SignUpButton(),
              GoogleSignUpButton(),
              LoginButton(),
            ],
          )
        ],
      ),
    );
  }
}
