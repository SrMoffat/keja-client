import 'package:flutter/material.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Column(
        children: <Widget>[
          Container(
            child: Container(
              child: Align(
                alignment: FractionalOffset(0.5, 0.0),
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 50.0, bottom: 70.0),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(),
            child: Card(
              color: Colors.blueGrey[100],
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Verify your phone number",
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "hello", prefixText: "+254"),
                      ),
                    ),
                    Text(
                      "We will send a four digit code on this number to verify your account ",
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      child: FractionallySizedBox(
                          widthFactor: 0.8,
                          child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(4)
                              ),
                              child: Text("continue"))),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
