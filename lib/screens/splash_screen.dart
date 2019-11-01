import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  final Color gradientStart = Colors.transparent;
  final Color gradientEnd = Color(0xff002116);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [gradientStart, gradientEnd],
              ).createShader(
                  Rect.fromLTRB(0, -140, rect.width, rect.height - 20));
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
          ),
          // TODO: Factor out into separate widget
          Column(
            children: <Widget>[
              Expanded(
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
              ),
              Expanded(
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
              ),
              Expanded(
                child: ButtonTheme(
                  minWidth: 320.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    textColor: Color(0xff00B074),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                flex: 0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ButtonTheme(
                    minWidth: 320.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      color: Color(0xff00B074),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                flex: 0,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: ButtonTheme(
                    minWidth: 200.0,
                    height: 50.0,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      textColor: Colors.white,
                      child: Container(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                flex: 0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
