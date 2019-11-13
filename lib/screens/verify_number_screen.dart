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
      backgroundColor: Color(0xFFCCDBD6),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Container(
                child: Align(
                  alignment: FractionalOffset(
                    0.5,
                    0.0,
                  ),
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.only(
                      top: 70.0,
                      bottom: 90.0,
                    ),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 94,
              decoration: BoxDecoration(),
              child: Card(
                color: Color(0xFFF3F3F3),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Verify Your Phone Number",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF787878),
                          fontFamily: "Margarine",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        child: TextField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          maxLength: 9,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                              ),
                            ),
                            hintText: "7*******",
                            icon: Text("+254"),
                            counter: SizedBox.shrink(),
                          ),
                        ),
                      ),
                      Text(
                        "We will send a four digit code on this number to verify your account ",
                        style: TextStyle(
                          color: Color(0xFFA3A3A3),
                          fontFamily: 'Lato',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          print(_controller.text);
                        },
                        child: FractionallySizedBox(
                          widthFactor: 0.8,
                          child: Card(
                            elevation: 5,
                            child: Container(
                              alignment: Alignment.center,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xFF00C280),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Manjari',
                                ),
                              ),
                            ),
                          ),
                        ),
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
