import 'package:fje/homme.dart';
import 'package:fje/profile.dart';
import 'package:fje/recommend.dart';
import 'package:flutter/material.dart';

class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  _JobState createState() => _JobState();
}

class _JobState extends State<Job> {
  List pages = [Home(), recommend(), MyHomePage(title: "Muhammad Sabir")];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue[800],
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.recommend), label: 'Recommended Jobs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Profile')
        ],
      ),
    );
  }
}
