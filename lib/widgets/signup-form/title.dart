import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  final String title;

  FormTitle({ this.title });
  
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}
