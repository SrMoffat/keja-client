import 'package:flutter/material.dart';

class PropertiesPage extends StatelessWidget {
  const PropertiesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.only(left: 27,right:10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.list,color: Colors.white, size: 40,),
                        Container(
                          width:100,
                          child: Row(
                            children: [
                              Icon(Icons.notifications, color: Colors.white),
                              SizedBox(width:10),
                              CircleAvatar(backgroundColor: Colors.blue,)

                              ],
                          ),
                        ),
                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: Text("Find a perfect home nearby",style: TextStyle(color: Colors.white,fontSize: 14),),
                  ),
                  
                  Row(
                    children: [
                      Text("Rent"),
                      ]
                  )
                  ],
                ),
              ),

            ),
          ] ,
        ),
    );
  }
}