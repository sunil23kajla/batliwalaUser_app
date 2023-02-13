import 'package:batlivalauser/widget/cart.dart';
import 'package:batlivalauser/widget/Product_Details.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/desi brand.png",
      "assets/English_brand.png",
      "assets/1965rum.png",
      "assets/wine.png",
      "assets/whisky.png",
      "assets/beer.png",
    ];
    List<String> name = [
      "Desi daru",
      "Royal Stag",
      "1965 spirit of Voctory Rare Xxx Rum",
      "Campo Viejo Rioja Tempranillo",
      "Crown Royal",
      "Alpha Pale Ale",
    ];
    List<String> rate = [
      "540/- 270/- 50% Off",
      "540/- 270/- 50% Off",
      "540/- 270/- 50% Off",
      "540/- 270/- 50% Off",
      "540/- 270/- 50% Off",
      "540/- 270/- 50% Off",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product List',
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
      body: Stack(
        children: [
          new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/loginbg.jpg"),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 3 / 4,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        orderScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 120,
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 10, top: 5,),
                                    // height: 80,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      name[index],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 10,top: 5
                                    ),
                                    // height: 20,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      rate[index],
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                  Container(
                                    
                                    margin: EdgeInsets.only(top: 20),
                                    padding: EdgeInsets.only(left: 5,right: 5,),
                                    height: 22,
                                    width: MediaQuery.of(context).size.width,
                                    child: FlatButton(
                                      child: Text(
                                        'ADD TO CART',
                                        style: TextStyle(fontSize: 10.0,color: Colors.amber),
                                      ),
                                      color: Color(0xFF922C2C),
                                      textColor: Colors.white,
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // child: Card(
                          //     child: Container(
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(5),
                          //       color: Colors.transparent.withOpacity(0.9),
                          //       border:
                          //           Border.all(width: 1, color: Color(0xFFEDE8E8)),
                          //       image: new DecorationImage(
                          //           image: new AssetImage(images[index],),
                          //           fit: BoxFit.contain,),),
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(top: 130,left: 20),
                          //     child: Center(
                          //         child: Text(
                          //       name[index],
                          //       style: TextStyle(
                          //           color: Colors.white,
                          //           fontWeight: FontWeight.bold,
                          //           fontSize: 20),
                          //     )),
                          //   ),
                          // ))
                        );
                       
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
