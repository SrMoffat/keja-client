import 'package:flutter/material.dart';

class FeaturedPropertyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0xFFF5F5F5),
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
                ),
                Positioned(
                  left: 12,
                  top: 12,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  right: 7,
                  top: 12,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF00B074),
                      borderRadius: BorderRadius.circular(100)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("\$100 / mo", style: TextStyle(color: Colors.white, fontSize: 10),),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 7, top: 13),
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
                  Row(children: [
                    Text(
                      '''Mirema Road, Nairobi''',
                      style: TextStyle(color: Color(0xFF727272), fontSize: 10),
                    )
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Row(children: [
                      Icon(Icons.hotel, color: Colors.green, size: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "2 bedrooms",
                          style:
                              TextStyle(fontSize: 9, color: Color(0xFF9E9E9E)),
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Row(children: [
                      Icon(Icons.free_breakfast, color: Colors.green, size: 15),
                      Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("2 bathrooms",
                              style: TextStyle(
                                  fontSize: 9, color: Color(0xFF9E9E9E))))
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Row(children: [
                      Icon(
                        Icons.free_breakfast,
                        color: Colors.green,
                        size: 15,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("2 Toilets",
                              style: TextStyle(
                                  fontSize: 9, color: Color(0xFF9E9E9E))))
                    ]),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey[300],
          blurRadius: 5,
          offset: Offset(4, 15),
        )
      ]),
    );
  }
}
