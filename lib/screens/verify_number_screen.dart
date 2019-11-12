import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextEditingController controller = TextEditingController();

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key key}) : super(key: key);

  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Container(
                child: Align(
                  alignment: FractionalOffset(0.5, 0.0),
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 70.0, bottom: 90.0),
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
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          maxLength: 9,
                          inputFormatters: <TextInputFormatter>[
                               WhitelistingTextInputFormatter.digitsOnly
                           ],
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green)
                            ),
                              hintText: "7*******", 
                              icon: Text("+254"),
                              counter: SizedBox.shrink()),
                        ),
                      ),
                      Text(
                        "We will send a four digit code on this number to verify your account ",
                        style: TextStyle(color: Colors.black54),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        child: FractionallySizedBox(
                            widthFactor: 0.8,
                            child: Container(
                                alignment: Alignment.center,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Text("continue"))),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
