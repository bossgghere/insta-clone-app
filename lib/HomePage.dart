import 'package:flutter/material.dart';
import 'package:insta/pages/account.dart';
import 'package:insta/pages/home.dart';
import 'package:insta/pages/reels.dart';
import 'package:insta/pages/search.dart';
import 'package:insta/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children=[
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex] ,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Searach"),
            BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
          ]),
    );
  }
}
