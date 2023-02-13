import 'package:batlivalauser/widget/Order_Details.dart';
import 'package:batlivalauser/widget/Product_Details.dart';
import 'package:batlivalauser/widget/cart.dart';
import 'package:flutter/material.dart';

class My_OrderScreen extends StatefulWidget {
  const My_OrderScreen({Key? key}) : super(key: key);

  @override
  State<My_OrderScreen> createState() => _My_OrderScreenState();
}

class _My_OrderScreenState extends State<My_OrderScreen> {
  List<String> Daru = [    
      "assets/1965rum.png","assets/1965rum.png",
    ];
    List<String> name = [
      "Campo Viejo Rioja Tempranillo",
      "Campo Viejo Rioja Tempranillo",
     
    ];
    List<String> rate = [
      "Delivered on May  04, 2020",
      "Delivered on May  04, 2020",
      
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Orders',
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
                Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 400,
                            childAspectRatio: 2 / 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: Daru.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      OrderDetailsScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                           
                            color: Color(0xFFffffff)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(   
                                      padding: EdgeInsets.only(top: 10,bottom: 20),                    
                                        child: Text(
                                          name[index],
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Color.fromARGB(255, 1, 1, 1),
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15),
                                        ),
                                      ),
                                        Container(
                              
                               alignment: Alignment.topLeft,
                                child: Text(
                                  rate[index],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 6, 6), fontSize: 12),
                                ),
                              ),
                                  ],
                                ),
                              Container(
                              
                                 height: 80,
                                child: Image.asset(
                                  Daru[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            
                            
                             
                            ],
                          ),
                        ),

                      
                      );
                     
                    }),
              ),
              ],
            )
          
        ),
      
    );
  }
}