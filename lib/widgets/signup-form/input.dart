import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final bool obscureText;
  final TextInputType keyboardType;
  final Function onSaved;
  final String fieldLabel;

  InputField({
    @required this.fieldLabel,
    @required this.onSaved,
    this.obscureText,
    this.keyboardType
  });


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      decoration: InputDecoration(
        labelText: fieldLabel,
        labelStyle: TextStyle(
          color: Color(0xff00B074),
        ),
      ),
    );
  }
}
