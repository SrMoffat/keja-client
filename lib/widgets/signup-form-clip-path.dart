import 'package:flutter/material.dart';

class SignUpClip extends StatefulWidget {
  @override
  _SignUpClipState createState() => _SignUpClipState();
}

// ShaderMask(
//   shaderCallback: (rect) {
//     return LinearGradient(
//       colors: [
//         Colors.transparent,
//         Color(0xff002116),
//       ],
//       begin: Alignment.topCenter,
//       end: Alignment.bottomCenter,
//     ).createShader(
//         Rect.fromLTRB(0, -140, rect.width, rect.height - 20));
//   },
//   blendMode: BlendMode.darken,
//   child: Container(
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage(
//           'assets/images/background-banner.jpg',
//         ),
//         fit: BoxFit.cover,
//       ),
//     ),
//   ),
// ),

class _SignUpClipState extends State<SignUpClip> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SignUpClipper(),
      child: Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background-banner.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'Keja',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.lineTo(0, size.height - 50);
    // path.lineTo(size.width / 2, size.height);
    // path.lineTo(size.width, size.height - 50);
    // path.lineTo(size.width, 0);
    // path.close();

    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
