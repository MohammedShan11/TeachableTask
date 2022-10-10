import 'package:flutter/material.dart';
import 'package:teachabletask/screens/stack/teachabletask10.dart';
import 'package:teachabletask/screens/stack/teachabletask11.dart';
import 'package:teachabletask/screens/stack/teachabletask12.dart';
import 'package:teachabletask/screens/stack/teachabletask13.dart';
import 'package:teachabletask/screens/stack/teachabletask14.dart';
import 'package:teachabletask/screens/stack/teachabletask8.dart';
import 'package:teachabletask/screens/stack/teachabletask9.dart';

class StackHome extends StatefulWidget {
  const StackHome({Key? key}) : super(key: key);

  @override
  State<StackHome> createState() => _StackHomeState();
}

class _StackHomeState extends State<StackHome> {
  List _pages = [
    StackOne(),
    StackTwo(),
    StackThree(),
    StackFour(),
    StackFive(),
    StackSix(),
    StackSeven(),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            // tooltip: 'call',
            icon: Icon(
              Icons.one_k,
            ),
            label: 'stack1',
          ),
          BottomNavigationBarItem(
            // tooltip: 'camera',
            icon: Icon(
              Icons.two_k,
            ),
            label: 'Stack2',
          ),
          BottomNavigationBarItem(
            // tooltip: 'chats',
            icon: Icon(
              Icons.three_k,
            ),
            label: 'Stack3',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.four_k,
              ),
              label: 'Stack4'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.five_k,
              ),
              label: 'Stack5'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.six_k,
              ),
              label: 'Stack6'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.seven_k,
              ),
              label: 'Stack7'),
        ],
      ),
    );
  }
}
