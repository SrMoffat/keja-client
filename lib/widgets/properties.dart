
import 'package:flutter/material.dart';

class FeaturedPropertyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Column(children: [
        Container(
          height: 100,
          width: 200,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  height: 100,
                  width: 200,
                  child: Image(
                    image: AssetImage('assets/images/background-banner.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 7,top: 13),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Crown Apartments",
                      style: TextStyle(
                          color: Color(0xFF818181),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, size: 10, color: Color(0xFFF1DA06)),
                        Text(
                          "4.3",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children:[Text('''Mirema Road, Nairobi''', style: TextStyle(
                    color: Color(0xFF727272),
                    fontSize: 10
                  ),)]),
                Row(
                  children:[
                    Icon(Icons.hotel),
                    Text("2 bedrooms")
                  ]
                   
                )

              ],
            ),
          ),
        )
      ]),
    );
  }
}