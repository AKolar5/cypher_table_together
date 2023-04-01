import 'package:cypher_table_together/edit.dart';
import 'package:cypher_table_together/home_page.dart';
import 'package:cypher_table_together/schedule.dart';
import 'package:flutter/material.dart';

const mainGreen = Color(0xFF165740);

class BarPage extends StatefulWidget {
  String? email;
  BarPage({this.email});

  @override
  State<BarPage> createState() => _BarPage(email!);
}

class _BarPage extends State<BarPage> {

  String email;
  _BarPage(this.email);

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    List screens = [HomePage(email: email), SchedulePage(), EditPage()];

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