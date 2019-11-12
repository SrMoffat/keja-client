import 'package:flutter/material.dart';

class GoogleSignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ButtonTheme(
          minWidth: 320.0,
          height: 50.0,
          child: RaisedButton(
            onPressed: () {
              print('OAuth Button Pressed');
            },
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
    );
  }
}
