import 'package:batlivalauser/widget/Account.dart';
import 'package:batlivalauser/widget/My_Order.dart';
import 'package:batlivalauser/widget/Setting.dart';
import 'package:batlivalauser/widget/cart.dart';
import 'package:batlivalauser/widget/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Deshboard extends StatefulWidget {
  const Deshboard({Key? key}) : super(key: key);

  @override
  State<Deshboard> createState() => _DeshboardState();
}

class _DeshboardState extends State<Deshboard> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List ScreenList = [
      HomeScreen(),  
      ProfileScreeen(),
      My_OrderScreen(),
      SettingScreen(),
    ];

    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      
      body: SizedBox.expand(
        child: ScreenList[_currentIndex],
      
      ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() {
              // _pageController.jumpToPage(index);
              _currentIndex = index;
            });
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                inactiveColor: Color(0xFF000000),
                activeColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text('Account'),
                inactiveColor: Color(0xFF000000),
                activeColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.card_travel),
                title: Text('Order'),
                inactiveColor: Color(0xFF000000),
                activeColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Setting'),
                inactiveColor: Color(0xFF000000),
                activeColor: Colors.black),
          ]),
    );
  }
}
