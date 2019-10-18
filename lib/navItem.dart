import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String propertyName;

  NavItem(this.propertyName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        propertyName,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
