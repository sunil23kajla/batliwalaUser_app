import 'package:batlivalauser/widget/ProducatScreen.dart';
import 'package:batlivalauser/widget/cart.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String imagePath;
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/desi.png",
      "assets/English.png",
      "assets/rum.png",
      "assets/wine.png",
      "assets/whisky.png",
      "assets/beer.png",
    ];
    List<String> name = [
      "Desi",
      "English",
      "Rum",
      "Wine",
      "Whisky",
      "Beer",
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/finallogo.png',
          fit: BoxFit.fill,
          height: 110,
          color: Color(0xFFf69b03),
        ),
        backgroundColor: Color(0xFF000000),
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
      backgroundColor: Colors.red,
      body: Stack(
        children: [
          new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/loginbg.jpg"),
                    fit: BoxFit.fill)),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 15, right: 15),
            height: 40,
            child: TextField(
              autofocus: false,
              style: TextStyle(fontSize: 15.0, color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'search',
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                contentPadding: const EdgeInsets.only(
                  left: 14.0,
                  bottom: 10.0,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1, color: Color(0xFFc1c1c1)),
                ),
              ),
              onChanged: (packValue) {
                setState(() {});
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            padding: const EdgeInsets.only(top: 10, left: 15),
            height: MediaQuery.of(context).size.height * .05,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFF2C879),
            child: const Text(
              'Welcome Hukumat Ray Kumawat,',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300,
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
                                          ProductPage()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1,color: Colors.white),borderRadius: BorderRadius.circular(5)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                      Image.asset(images[index],fit: BoxFit.fill,),
                                 Container(
                                  padding: EdgeInsets.only(left: 10,top: 10),
                                    height: 50,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color(0xFFE6E3E3),
                                    child: Text(  name[index],textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),),
                                 )     
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
                            //           image: new AssetImage(images[index]),
                            //           fit: BoxFit.contain)),
                            //   child: Container(
                            //     height: 100,
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
