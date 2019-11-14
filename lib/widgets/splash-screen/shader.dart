import 'package:flutter/material.dart';

class SplashScreenShader extends StatelessWidget {
  final Color gradientStart = Colors.transparent;
  final Color gradientEnd = Color(0xff002116);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [gradientStart, gradientEnd],
        ).createShader(Rect.fromLTRB(0, -140, rect.width, rect.height - 20));
      },
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background-banner.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
