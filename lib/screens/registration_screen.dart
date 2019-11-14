import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import './verify_number_screen.dart';

const users = const {
  '4fr0c0d3@gmail.com': '12345',
  'c0e3e@outlook.com': 'jhshjsbx',
};

class RegistrationForm extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: $data.name, Password: $data.password');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username does not exist!!';
      }
      if (users[data.name] != data.password) {
        return 'Passwords don\'t match!';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User does not exist!!';
      }
      return null;
    });
  }

  // String _validateEmail(String email) {
  //   return 'Validation error here';
  // }

  // String _validatePassword(String password) {
  //   return 'Validation error here';
  // }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: '',
      logo: 'assets/images/logo.png',
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => PhoneVerification(),
          ),
        );
      },
      onRecoverPassword: _recoverPassword,
      messages: LoginMessages(
        usernameHint: 'Username',
        passwordHint: 'Password',
        confirmPasswordHint: 'Confirm',
        loginButton: 'LOGIN',
        signupButton: 'SIGNUP',
        forgotPasswordButton: 'Forgot your password?',
        recoverPasswordButton: 'Reset',
        recoverPasswordDescription:
            'We will send your plain text password to this account',
        goBackButton: 'BACK',
        confirmPasswordError: 'Passwords don\'t macth!',
        recoverPasswordSuccess: 'New password has been sent to your account 🤓',
      ),
      // emailValidator: _validateEmail,
      // passwordValidator: _validatePassword,
    );
  }
}
