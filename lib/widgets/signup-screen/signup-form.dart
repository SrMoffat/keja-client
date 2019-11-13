import 'package:flutter/material.dart';

import './signup-form-clip-path.dart';

import '../signup-form/title.dart';
import '../signup-form/input.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String _username;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          SignUpClip(),
          Column(
            children: <Widget>[
              Card(
                margin: EdgeInsets.fromLTRB(16.0, 190.0, 16.0, 0),
                color: Color(0xffF3F3F3),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          FormTitle(
                            title: 'Sign Up',
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          InputField(
                            fieldLabel: 'Username',
                            onSaved: (value) => _username = value,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            onSaved: (value) => _email = value,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Color(0xff00B074),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            onSaved: (value) => _password = value,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Color(0xff00B074),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          RaisedButton(
                            child: Text('Sign Up'),
                            textColor: Colors.white,
                            color: Color(0xff00B074),
                            onPressed: () {
                              final form = _formKey.currentState;
                              form.save();

                              if (form.validate()) {
                                print("$_username $_email $_password");
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
