import 'package:flutter/material.dart';

class Property extends StatelessWidget {

  final Function listProperty;
  final String itemText;

  Property(this.listProperty, this.itemText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(itemText),
        onPressed: listProperty,
      ),
    );
  }
}
