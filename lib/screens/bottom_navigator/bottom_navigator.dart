import 'package:flutter/material.dart';
import 'package:newfiles/colors/colors.dart';
import 'package:newfiles/screens/favorite/favorite.dart';
import 'package:newfiles/screens/home/home_screen.dart';
import 'package:newfiles/screens/settings/settings.dart';
import 'package:newfiles/screens/voucer/voucer.dart';
import 'package:newfiles/screens/wallet/wallet.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Favorite(),
    Wallet(),
    Voucer(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            activeIcon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_travel),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_sharp),
            label: 'Voucer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: priceColor,
        unselectedItemColor: buttonBlack,
        onTap: _onItemTapped,
      ),
    );
  }
}
