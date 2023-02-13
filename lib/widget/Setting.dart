import 'package:batlivalauser/show_dilog.dart';
import 'package:batlivalauser/widget/Account.dart';
import 'package:batlivalauser/widget/My_Order.dart';
import 'package:batlivalauser/widget/Order_Details.dart';
import 'package:batlivalauser/widget/Product_Details.dart';
import 'package:batlivalauser/widget/cart.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting',
          style: TextStyle(color: Colors.amber),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CartScreen()));
              }),
        ],
      ),
      backgroundColor: Color(0xFFf2f2f2),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left:7,right: 7),
        child: Column(
          children: [
   
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   
                     Container(
                      padding: EdgeInsets.only(top: 20,bottom: 20),
                       child: InkWell(
                        child: Text('Personal Information',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        onTap: (){
                             Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              ProfileScreeen()));
                        },
                    ),
                     ),
                     InkWell(
                        child: Text('My Orders',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        onTap: (){
                             Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              My_OrderScreen()));
                        },
                    ),
                     Container(
                      padding: EdgeInsets.only(top: 20),
                       child: InkWell(
                          child: Text('Log out',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                          onTap: (){
                               showLogoutDialog(context);
                          }
                    ),
                     ),
                  ],
                ),
              ),
              ],
            )
          
        ),
      
    );
  }
}