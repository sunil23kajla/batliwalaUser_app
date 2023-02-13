// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:batlivalauser/widget/BottomNavigationBar.dart';
import 'package:flutter/material.dart';

class otp_file extends StatefulWidget {
  const otp_file({Key? key}) : super(key: key);

  @override
  State<otp_file> createState() => _otp_fileState();
}

class _otp_fileState extends State<otp_file> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: new BoxDecoration(
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
                        child: Text(
                          'VARIFY OTP ',
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                              letterSpacing: 2),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            margin: EdgeInsets.only(right: 10.0),
                            child: TextField(
                              //  controller: _textControllers,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                              // focusNode: _focusNodes[i],
                              // obscureText: widget.isTextObscure,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(bottom: 3),
                                counterText: "",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      width: 1.5,
                                      color: Colors.green,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide: new BorderSide(
                                        width: 1.5,
                                        color: Colors.grey.withOpacity(.5),
                                        style: BorderStyle.solid)),
                              ),
                            ),
                          ),
                           Container(
                            width: 45,
                            height: 45,
                            margin: EdgeInsets.only(right: 10.0),
                            child: TextField(
                              //  controller: _textControllers,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                              // focusNode: _focusNodes[i],
                              // obscureText: widget.isTextObscure,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(bottom: 3),
                                counterText: "",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      width: 1.5,
                                      color: Colors.green,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide: new BorderSide(
                                        width: 1.5,
                                        color: Colors.grey.withOpacity(.5),
                                        style: BorderStyle.solid)),
                              ),
                            ),
                          ),
                           Container(
                            width: 45,
                            height: 45,
                            margin: EdgeInsets.only(right: 10.0),
                            child: TextField(
                              //  controller: _textControllers,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                              // focusNode: _focusNodes[i],
                              // obscureText: widget.isTextObscure,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(bottom: 3),
                                counterText: "",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      width: 1.5,
                                      color: Colors.green,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide: new BorderSide(
                                        width: 1.5,
                                        color: Colors.grey.withOpacity(.5),
                                        style: BorderStyle.solid)),
                              ),
                            ),
                          ),
                           Container(
                            width: 45,
                            height: 45,
                            margin: EdgeInsets.only(right: 10.0),
                            child: TextField(
                              //  controller: _textControllers,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 20),
                              // focusNode: _focusNodes[i],
                              // obscureText: widget.isTextObscure,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(bottom: 3),
                                counterText: "",
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                  borderSide: BorderSide(
                                      width: 1.5,
                                      color: Colors.green,
                                      style: BorderStyle.solid),
                                ),
                                enabledBorder: new OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide: new BorderSide(
                                        width: 1.5,
                                        color: Colors.grey.withOpacity(.5),
                                        style: BorderStyle.solid)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                       Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: SizedBox(height: 38,width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: (){  
                                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) => Deshboard()));
                        }, child: Text('Varify'),
                        style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Color(0xFFf69b03),),
                        ),
                        )
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
