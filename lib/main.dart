import 'package:flutter/material.dart';

import './navItem.dart';
import './property.dart';
import './propertyOps.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _operationIndex = 0;

  void _listProperties() {
    setState(() {
      _operationIndex = _operationIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var propertyOperations = propertyOps;
    _operationIndex >= propertyOperations.length
        ? _operationIndex = 0
        : _operationIndex = _operationIndex;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Keja'),
        ),
        body: Column(
          children: <Widget>[
            NavItem(
              propertyOperations[_operationIndex]['page'],
            ),
            ...(propertyOperations[_operationIndex]['pageElements']
                    as List<String>)
                .map((item) {
              return Property(_listProperties, item);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
