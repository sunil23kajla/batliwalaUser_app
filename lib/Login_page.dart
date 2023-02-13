// ignore_for_file: prefer_const_constructors

import 'package:batlivalauser/RegisterScreen.dart';
import 'package:batlivalauser/widget/BottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Loginfile extends StatefulWidget {
  const Loginfile({Key? key}) : super(key: key);

  @override
  State<Loginfile> createState() => _LoginfileState();
}

class _LoginfileState extends State<Loginfile> {
  TextEditingController mobileno = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/loginbg.jpg"), fit: BoxFit.fill)),
          child: Column(children: [
            Container(
              child: Image.asset(
                'assets/finallogo.png', color: Color(0xFFf69b03),
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * .65,
                // height: 150,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(33.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                              letterSpacing: 2),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 13),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'USER NAME',
                          style:
                              TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 42,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xFFc1c1c1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFFffffff),
                            ),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          hintText: 'Mobile No',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xFF9b9b9b,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          'PASSWORD',
                          style:
                              TextStyle(color: Color(0xFFf69b03), fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 42,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white, fontSize: 10),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2, color: Color(0xFFc1c1c1)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFFc1c1c1),
                            ),
                          ),
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.0),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color(
                              0xFF9b9b9b,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: SizedBox(
                          height: 42,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Deshboard()));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color(0xFFf69b03),
                              ),
                            ),
                            child: Text('LOGIN'),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account?',
                              style: TextStyle(color: Color(0xFFFFFFFF))),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          RegisterScreen()));
                            },
                            child: Text(
                              ' Sign Up',
                              style: TextStyle(
                                  color: Color(0xFFf69b03),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ])),
    ));
  }
}
