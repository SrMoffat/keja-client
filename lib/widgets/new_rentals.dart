import 'package:flutter/material.dart';

class NewPropertiesCard extends StatelessWidget {
  const NewPropertiesCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 158,
      child: Card(
        color: Color(0xFFF5F5F5),
        child: Column(
          children: <Widget>[
            Container(
              width: 158,
              height: 70,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 158,
                    height: 70,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(5)),
                      child: Image(
                        image:
                            AssetImage('assets/images/background-banner.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 7, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Bourgoise Plaza',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF818181)),
                        ),
                        Row(children: [
                          Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.yellow,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(fontSize: 12),
                          )
                        ])
                      ],
                    ),
                    SizedBox(width:5),
                    Row(
                      children: <Widget>[
                        Text('Jinja Street, kilimani', style: TextStyle(
                          fontSize: 8,
                          color: Color(0xFF727272),
                        ),)],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey[300],
          blurRadius: 5,
          offset: Offset(4, 15),
        )])
    );
  }
}
