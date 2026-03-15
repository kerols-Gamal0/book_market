import 'package:flutter/material.dart';
import 'package:ieee_final_project/bottom_nav_bar_home.dart';
import 'package:ieee_final_project/cart.dart';
import 'package:ieee_final_project/category.dart';
import 'package:ieee_final_project/profile.dart';
import 'Notification.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int selectedIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [BottomNavBarHome(), Category(), Cart(), Profile()];
    final List<Map<String, dynamic>> appBarData = [
      {
        "title": "Home",
        "leading": const Icon(Icons.search),
        "actions": [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Notification_Screen()),
              );
            },
          ),
        ],
      },
      {
        "title": "Categories",
        "leading": Icon(Icons.search),
        "actions": [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Notification_Screen()),
              );
            },
          ),
        ],
      },
      {
        "title": "My Cart",
        "leading": null,
        "actions": [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Notification_Screen()),
              );
            },
          ),
        ],
      },
      {"title": "Profile", "leading": null, "actions": null},
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff54408C),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
      appBar: AppBar(
        title: Text(
          appBarData[selectedIndex]["title"],
          style: TextStyle(fontWeight: .bold),
        ),
        leading: appBarData[selectedIndex]["leading"],
        actions: appBarData[selectedIndex]["actions"],
        centerTitle: true,
      ),
      body: pages[selectedIndex],
    );
  }
}
