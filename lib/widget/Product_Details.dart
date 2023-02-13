import 'dart:collection';

import 'package:batlivalauser/widget/cart.dart';
import 'package:batlivalauser/widget/Product_Details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class orderScreen extends StatefulWidget {
  const orderScreen({Key? key}) : super(key: key);

  @override
  State<orderScreen> createState() => _orderScreenState();
}

class _orderScreenState extends State<orderScreen> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              height: 300,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                image: AssetImage('assets/English_brand.png'),
              )),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Color(0xFF00A368),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                        width: 1, color: Color.fromARGB(255, 235, 229, 229))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Campo Viejo Rioja Tempranillo',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Price - 128 ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select Size',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Row(
              children: [
                SelectSize("250ML"),
                SelectSize("500ML"),
                SelectSize("750ML"),
                SelectSize("1000ML"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Quantity',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  _decrementButton(numberOfItems),
                  const SizedBox(
                    width: 5,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        '${numberOfItems}',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  _incrementButton(numberOfItems),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Text('share'),
                    ),
                    Container(
                      child: Text('Add to wishlist'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 12, bottom: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil quos corrupti odio totam, repellat in dolorem at minus explicabo optio doloremque, omnis odit ad, maxime. Aut, totam ea rerum soluta! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat cum vero veritatis eius autem labore quas facere quasi! Eos nesciunt, similique quae',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CartScreen()));
              },
              child: Container(
                color: Color.fromARGB(255, 253, 253, 253),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'ADD TO CART',
                      style: TextStyle(
                          color: Color.fromARGB(255, 5, 5, 5),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 4, 5, 5),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget SelectSize(title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: 70,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: Color.fromARGB(255, 224, 222, 217))),
        child: Center(child: Text(title)),
      ),
    );
  }

  Widget _incrementButton(int index) {
    return Container(
      height: 40,
      width: 40,
      child: FloatingActionButton(
        heroTag: "btn2",
        child: Icon(Icons.add, color: Colors.black87),
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            numberOfItems++;
          });
        },
      ),
    );
  }

  Widget _decrementButton(int index) {
    return Container(
      height: 40,
      width: 40,
      child: FloatingActionButton(
          heroTag: "btn1",
          onPressed: () {
            setState(() {
              if (numberOfItems > 1) {
                numberOfItems--;
              }
            });
          },
          child: Icon(
            Icons.remove,
            color: Colors.black,
          ),
          backgroundColor: Colors.white),
    );
  }
}
