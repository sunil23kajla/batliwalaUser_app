// ignore_for_file: unnecessary_new, prefer_const_constructors

import 'package:batlivalauser/widget/OTP.dart';
import 'package:batlivalauser/widget/Textfieldwidget.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController fullName = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController aadharnumber = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xFFf0f0f0),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(
            'assets/finallogo.png',
            fit: BoxFit.fill,
            height: 110,
            color: Color(0xFFf69b03),
          ),
          backgroundColor: Color(0xFF000000),
          centerTitle: true,
        ),
        body: Stack(children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/loginbg.jpg"),
                    fit: BoxFit.fill)),
          ),
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 33.0, right: 33.0, top: 20.0),
              child: Column(children: [
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                                letterSpacing: 2),
                          ),
                        ),
                        profiles("NAME", fullName, "Name", TextInputType.text),
                        // profiles("LAST NAME", lastname, "Last Name",
                        //     TextInputType.text),
                        profiles(
                          "EMAIL/MOBILE No.",
                          mobileno,
                          "Enter Email Mobile No.",
                          TextInputType.emailAddress,
                          // limit: 10,
                        ),

                        profiles(
                          "Aadhar Card Number",
                          aadharnumber,
                          "Aadhar Card Number",
                          TextInputType.number,
                          limit: 12,
                        ),
                        profiles(
                          "PASSWORD",
                          password,
                          "Password",
                          TextInputType.text,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: SizedBox(
                              height: 38,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              otp_file()));
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFf69b03),
                                  ),
                                ),
                                child: Text('SEND OTP.'),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Already have an account?',
                                  style: TextStyle(color: Color(0xFFFFFFFF))),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Color(0xFFf69b03),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ]),
            ),
          )
        ]));
  }
}
