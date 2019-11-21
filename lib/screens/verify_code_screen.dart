import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

TextEditingController controller = TextEditingController();

class CodeVerification extends StatefulWidget {
  const CodeVerification({Key key}) : super(key: key);

  @override
  _CodeVerificationState createState() => _CodeVerificationState();
}

class _CodeVerificationState extends State<CodeVerification> {
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
                        "Four-digit code sent to",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF787878),
                          fontFamily: "Margarine",
                        ),
                      ),
                      Text(
                        "+25471234567",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF00C280),
                          fontFamily: "Margarine",
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 300,
                        height: 45,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.zero,
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.zero,
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.zero,
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                              Container(
                                height: 45,
                                width: 45,
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.zero,
                                          borderSide: BorderSide.none)),
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: "Auto detecting code resend in",
                          style: TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontFamily: 'Lato',
                          ),
                        ),
                        TextSpan(
                          text: " 25 ",
                          style: TextStyle(
                            color: Color(0xFF00C280),
                            fontFamily: 'Lato',
                          ),
                        ),
                        TextSpan(
                          text: "seconds",
                          style: TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontFamily: 'Lato',
                          ),
                        ),
                      ])),
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
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Resend Code",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF00C280),
                          fontFamily: "Margarine",
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
