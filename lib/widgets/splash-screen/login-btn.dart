import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        child: ButtonTheme(
          minWidth: 200.0,
          height: 50.0,
          child: FlatButton(
            onPressed: () {
              print('Login Button Pressed');
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
    );
  }
}
