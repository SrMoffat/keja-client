import 'package:flutter/material.dart';
import 'package:keja/widgets/properties.dart';
import 'package:keja/widgets/new_rentals.dart';


class PropertiesPage extends StatelessWidget {
  const PropertiesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Stack(
          children: <Widget>[
            Column(
      children: <Widget>[
        Container(
          height: 200,
          color: Color(0xFF00B074),
          child: Padding(
            padding: const EdgeInsets.only(left: 27, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 40,
                    ),
                    Container(
                      width: 100,
                      child: Row(
                        children: [
                          Icon(Icons.notifications, color: Colors.white),
                          SizedBox(width: 10),
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Find a perfect home nearby",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 215,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rent",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Buy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Sell",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
    Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(top: 30, left: 27),
            children: [Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Featured Properties", style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFA2A2A2),
                      ),),
                  Container(
                    height: 231,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: FeaturedPropertyCard(),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "New Rentals In Nairobi",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFA2A2A2),
                      ),
                  ),
                   Container(
                    height: 115,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: NewPropertiesCard(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:32,)
            ]
          ),
    ),
      ],
            ),
            Positioned(
      top: 172,
      left: 25,
      child: Container(
        width: 360,
        height: 45,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5.0)]),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white,
            hintText: "Search by location",
            hintStyle: TextStyle(fontSize: 14),
            suffixIcon: Icon(Icons.search, color: Color(0xFF00B074)),
          ),
        ),
      ),
            )
          ],
        ),
       
    bottomNavigationBar:  BottomAppBar(
      color: Color(0xFFE5E5E5),
   
      child: Container(
        height: 60,
        
        decoration: BoxDecoration(
          color: Color(0xFFEDEDED),
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home, color: Colors.green),
                  Text('Properties', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  ),)
                ],
              ),
             Column(
                children: <Widget>[
                  Icon(Icons.home, color:Color(0xFFAFAFAF)),
                  Text('Create', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color:Color(0xFFAFAFAF)
                  ),)
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.favorite, color:Color(0xFFAFAFAF)),
                  Text('Favorites', style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFAFAFAF)
                  ),)
                ],
              ),
            ],),
        ),
      )
      ),
    );
  }
}
