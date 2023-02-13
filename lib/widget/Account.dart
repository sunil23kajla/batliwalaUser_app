// // ignore_for_file: prefer_const_constructors
 // ignore_for_file: sort_child_properties_last, unnecessary_new

// import 'dart:ui';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
// import 'package:intl/intl.dart';

// class ProfileScreeen extends StatefulWidget {
//   const ProfileScreeen({Key? key}) : super(key: key);

//   @override
//   State<ProfileScreeen> createState() => _ProfileScreeenState();
// }

// class _ProfileScreeenState extends State<ProfileScreeen> {
//   TextEditingController fullName = TextEditingController();
//   TextEditingController dob = TextEditingController();
//   TextEditingController gender = TextEditingController();
//   TextEditingController email = TextEditingController();
//   TextEditingController mobileno = TextEditingController();
//   TextEditingController state = TextEditingController();
//   TextEditingController city = TextEditingController();
//   TextEditingController district = TextEditingController();
//   TextEditingController pincode = TextEditingController();
//   final format = DateFormat("yyyy-MM-dd");

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.all(25.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               child: const Text(
//                 'My Profile',
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               ),
//             ),

//             profiles("Name", fullName, "Enter your Full Name", Icons.person,
//                 TextInputType.text),
//             //  profiles("DOB",dob,"DOB" ,Icons.calendar_today,TextInputType.text),
//             Padding(
//                 padding: EdgeInsets.only(left: 2.0, right: 25.0, top: 25.0),
//                 child: new Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     new Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: <Widget>[
//                         new Text(
//                           'DOB',
//                           style: TextStyle(
//                               fontSize: 16.0, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ],
//                 )),
//             Padding(
//                 padding: EdgeInsets.only(left: 1.0, right: 1.0, top: 1.0),
//                 child: new Row(
//                   mainAxisSize: MainAxisSize.max,
//                   children: <Widget>[
//                     new Flexible(
//                       child: DateTimeField(
//                         controller: dob,
//                         decoration: const InputDecoration(
//                           prefixIcon: Icon(Icons.calendar_today),
//                           hintText: "Enter your Dob",
//                         ),
//                         format: format,
//                         onShowPicker: (context, currentValue) {
//                           return showDatePicker(
//                               context: context,
//                               firstDate: DateTime(1900),
//                               initialDate: currentValue ?? DateTime.now(),
//                               lastDate: DateTime(2100));
//                         },
//                       ),
//                     ),
//                   ],
//                 )),
//             profiles("Gender", gender, "Enter your Gender", Icons.man_outlined,
//                 TextInputType.text),
//             profiles("Email", email, "Enter your Email", Icons.email,
//                 TextInputType.text),
//             profiles(
//               "Mobile No.",
//               mobileno,
//               "Enter your Mobile No.",
//               Icons.phone,
//               TextInputType.number,
//               limit: 10,
//             ),
//             profiles("State", state, "Enter your State", Icons.home,
//                 TextInputType.text),
//             profiles("City", city, "Enter your City", Icons.home,
//                 TextInputType.text),
//             profiles("District", district, "Enter your District", Icons.home,
//                 TextInputType.text),
//             profiles("Pincode", pincode, "Enter your Pincode",
//                 Icons.person_pin_circle_rounded, TextInputType.number,
//                 limit: 6),

//             Padding(
//               padding:
//                   const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
//               // ignore: unnecessary_new
//               child: new Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(right: 10.0),
//                       child: Container(
//                           // ignore: unnecessary_new
//                           child: new RaisedButton(
//                         child: new Text("cancel"),
//                         textColor: Colors.white,
//                         color: Colors.red,
//                         onPressed: () {
//                           Navigator.of(context).pop();
//                         },
//                         // ignore: unnecessary_new
//                         shape: new RoundedRectangleBorder(
//                             borderRadius: new BorderRadius.circular(20.0)),
//                       )),
//                     ),
//                     flex: 2,
//                   ),
//                   Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 10.0),
//                       child: Container(
//                           child: new RaisedButton(
//                         child: new Text("save"),
//                         textColor: Colors.white,
//                         color: Color(0xFF19344f),
//                         onPressed: () async {
//                           bool emailValid = RegExp(
//                                   r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
//                               .hasMatch(email.text);

//                           if (fullName.text.isEmpty ||
//                               dob.text.isEmpty ||
//                               gender.text.isEmpty ||
//                               email.text.isEmpty ||
//                               mobileno.text.isEmpty ||
//                               state.text.isEmpty ||
//                               city.text.isEmpty ||
//                               district.text.isEmpty ||
//                               pincode.text.isEmpty) {
//                             Fluttertoast.showToast(
//                               msg: " All field are required",
//                               gravity: ToastGravity.CENTER,
//                             );
//                           } else if (!emailValid) {
//                             Fluttertoast.showToast(
//                               msg: "Email is not valid",
//                               gravity: ToastGravity.CENTER,
//                             );
//                           } else if (validateMobile(mobileno.text.trim())) {
//                             Fluttertoast.showToast(
//                                 msg: "please enter valid number");
//                           } else {
//                             Fluttertoast.showToast(msg: "validation complete");
//                             // print("validation complete");
//                           }
//                         },
//                         shape: new RoundedRectangleBorder(
//                             borderRadius: new BorderRadius.circular(20.0)),
//                       )),
//                     ),
//                     flex: 2,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }

//   bool validateMobile(String value) {
//     print("validateMobile called");
//     if (value.length != 10)
//       // return 'Mobile Number must be of 10 digit';
//       return true;
//     {
//       // return null;
//       return true;
//     }
//   }

//   Widget profiles(title, value, hintname, icons, board, {limit = 70}) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 15, left: 1),
//           child: Container(
//             padding: const EdgeInsets.only(bottom: 5),
//             child: Text(
//               title,
//               style: TextStyle(color: Color(0xFF000000), fontSize: 20),
//             ),
//             alignment: Alignment.topLeft,
//           ),
//         ),
//         new Row(
//           mainAxisSize: MainAxisSize.max,
//           children: <Widget>[
//             // ignore: unnecessary_new
//             new Flexible(
//               child: new TextField(
//                 inputFormatters: [
//                   LengthLimitingTextInputFormatter(limit),
//                 ],
//                 keyboardType: board,
//                 controller: value,
//                 decoration: InputDecoration(
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Icon(icons),
//                   ),
//                   hintText: "$hintname",
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:batlivalauser/widget/cart.dart';
import 'package:flutter/material.dart';

class ProfileScreeen extends StatefulWidget {
  ProfileScreeen({Key? key}) : super(key: key);

  @override
  State<ProfileScreeen> createState() => _ProfileScreeenState();
}

class _ProfileScreeenState extends State<ProfileScreeen> {
  

  bool address = false;

  bool ordersummary = false;

  bool payment = false;

  TextEditingController state = TextEditingController();

  TextEditingController pin = TextEditingController();

  TextEditingController houseno = TextEditingController();

  TextEditingController landmark = TextEditingController();

  TextEditingController city = TextEditingController();
  TextEditingController name1 = TextEditingController();
  TextEditingController name2 = TextEditingController();
  
  @override
  
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined), onPressed: () {
                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CartScreen()));
              }),
        ],
      ),
      body: SingleChildScrollView(
              child: Container(
                child: Form( 
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: name1,
                              decoration: InputDecoration(
                                  // enabled: false,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1.0),
                                  ),
                                  labelText: "First Name"),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              controller: name2,
                              decoration: InputDecoration(
                                // enabled: false,
                                labelText: "Last Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    controller: state,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(1.0),
                                        ),
                                        labelText: "State"),
                                  ),
                                ),
                                // SizedBox(width: 15.0),
                                // Expanded(
                                //   child: TextButton(
                                //     onPressed: () {
                                //       // getUserCrruntLocation();
                                //     },
                                //     child: Container(
                                //       padding: EdgeInsets.all(15.0),
                                //       decoration: BoxDecoration(
                                //           color: Colors.blue,
                                //           borderRadius:
                                //               BorderRadius.circular(5.0)),
                                //       child: Row(
                                //         // ignore: prefer_const_literals_to_create_immutables
                                //         children: [
                                //           Icon(
                                //             Icons.my_location,
                                //             color: Colors.white,
                                //           ),
                                //           Text(
                                //             'Use my location',
                                //             style: TextStyle(
                                //               color: Colors.white,
                                //             ),
                                //           ),
                                //         ],
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    controller: pin,
                                    keyboardType: TextInputType.number,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter email';
                                      }

                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(1.0),
                                        ),
                                        labelText: "Pincode (Required)"),
                                  ),
                                ),
                                SizedBox(width: 15.0),
                                Expanded(
                                  child: TextFormField(
                                      controller: city,
                                      decoration: InputDecoration(
                                        labelText: "City (Required)",
                                        suffixIcon: Icon(Icons.search),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(1.0),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              controller: houseno,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1.0),
                                  ),
                                  labelText:
                                      "House No.,Building Name (Required)"),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              controller: landmark,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter email';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(1.0),
                                  ),
                                  labelText:
                                      "Road name,Area,Coloney (Required)"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: Text('Type of address'),
                            ),
                            Row(
                              children: [
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.home),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        "Home",
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20.0),
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(Icons.work),
                                      SizedBox(width: 8.0),
                                      Text("Work"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                height: 15),
                            SizedBox(
                            
                              child: RaisedButton(
                                onPressed: () {
                                 
                                },
                                color: Colors.amber,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text("Save Address"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );

  }
  
}

