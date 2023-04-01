import 'package:cypher_table_together/calendar.dart';
import 'package:cypher_table_together/edit.dart';
import 'package:cypher_table_together/home_page.dart';
import 'package:flutter/material.dart';

const mainGreen = Color(0xFF165740);

class BarPage extends StatefulWidget {
  const BarPage({Key? key}) : super(key: key);

  @override
  State<BarPage> createState() => _BarPage();
}

class _BarPage extends State<BarPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    int selectedIndex = 0;
    List screens = [HomePage(), null, EditPage()];

    void onTap(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}