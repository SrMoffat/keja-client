import 'package:flutter/material.dart';

import '../widgets/signup-screen/signup-form.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SignUpForm(),
    );
  }
}
