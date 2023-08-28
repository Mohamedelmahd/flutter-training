import 'package:flutter/material.dart';
import 'package:flutter_project/screens/logout_screen.dart';
import 'package:flutter_project/screens/homepage.dart';
import 'package:flutter_project/screens/categories_screen.dart';
import 'package:flutter_project/screens/user_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String email});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> pages = [Page1() , CategoriesListPage(), UserProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      actions: [
      Padding(
      padding: EdgeInsets.only(right: 16.0),

    ),
  ],  
      ),

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: " Home",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: " Categories",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: " My Profile",
            backgroundColor: Colors.red,
          ),
        ],
        onTap: (value) {
          currentIndex = value;
          setState(() {});
          print(value);
        },
      ),
    );
  }
}
