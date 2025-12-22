import 'package:flutter/material.dart';
import 'package:testapp/Screen/CategoryScreen.dart';
import 'package:testapp/Screen/EcommerceScreen.dart';
import 'package:testapp/Screen/HomeScreen.dart';
import 'package:testapp/Screen/ListViewScreen.dart';
class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  int _selectedIndex = 0;
  final List<Widget> _screen =[
    EcommerceScreen(),
    CategoryScreen(),
    ListViewScreen(),
    ListViewScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,

        // --- Add these two lines ---
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        // ---------------------------

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: "Cart"),
        ],
      ),
    );
  }
}
