import 'package:batlivalauser/widget/Order_Details.dart';
import 'package:batlivalauser/widget/Product_Details.dart';
import 'package:batlivalauser/widget/cart.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Order Details',
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
        backgroundColor: Color.fromARGB(255, 235, 231, 231),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(children: [
            Container(
                decoration: BoxDecoration(color: Color(0xFFffffff)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        orderDetail("Order Id - OD01003156521"),
                        orderDetail("Campo Viejo Rioja Tempranillo"),
                        orderDetail("1000ml"),
                        orderDetail("price -  250"),
                      ],
                    ),
                    imagess("assets/1965rum.png"),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              // height: 400,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFEFEFE),
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'PRICE DETAILS',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromARGB(255, 1, 1, 1),
                          fontWeight: FontWeight.w900,
                          fontSize: 15),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 184, 177, 177))),
                  )),
                  PriceDetails('List Price', '1000'),
                  PriceDetails('Selling Price', '749'),
                  PriceDetails('Delivery Fee', '40'),
                  PriceDetails('Shipping Discount', '-40'),
                  Container(
                      decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255, 184, 177, 177))),
                  )),
                  PriceDetails('Total Amount', '749'),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 184, 177, 177))),
                      )),
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Bank price : 749.00',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromARGB(255, 1, 1, 1),
                          fontWeight: FontWeight.w900,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }

  Widget orderDetail(title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          title,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Color.fromARGB(255, 1, 1, 1),
              fontWeight: FontWeight.w400,
              fontSize: 15),
        ),
      ),
    );
  }

  Widget imagess(Daru) {
    return Container(
      height: 80,
      child: Image.asset(
        Daru,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget PriceDetails(title, price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromARGB(255, 1, 1, 1),
              // fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          child: Text(
            price,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Color.fromARGB(255, 135, 112, 112),
            ),
          ),
        ),
      ],
    );
  }
}
