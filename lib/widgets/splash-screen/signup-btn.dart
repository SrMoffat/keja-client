import 'package:flutter/material.dart';

import '../../screens/registration_screen.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonTheme(
        minWidth: 320.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: () {
            print('Pressed SignUp Button');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => RegistrationForm(),
              ),
            );
          },
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
    );
  }
}
