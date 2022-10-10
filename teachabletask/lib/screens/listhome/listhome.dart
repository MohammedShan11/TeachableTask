import 'package:flutter/material.dart';
import 'package:teachabletask/screens/listhome/teachabletask1.dart';
import 'package:teachabletask/screens/listhome/teachabletask2.dart';
import 'package:teachabletask/screens/listhome/teachabletask3.dart';
import 'package:teachabletask/screens/listhome/teachabletask4.dart';
import 'package:teachabletask/screens/listhome/teachabletask5.dart';
import 'package:teachabletask/screens/listhome/teachabletask6.dart';
import 'package:teachabletask/screens/listhome/teachabletask7.dart';

class ListHome extends StatefulWidget {
  const ListHome({Key? key}) : super(key: key);

  @override
  State<ListHome> createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {
  List _pages = [
    EmailListView(),
    ListGridView(),
    SamListTile(),
    ContactPage(),
    CatalogApp(),
    CheckBoxListTile(),
    CitiesOfWorld(),
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
            label: 'List1',
          ),
          BottomNavigationBarItem(
            // tooltip: 'camera',
            icon: Icon(
              Icons.two_k,
            ),
            label: 'List2',
          ),
          BottomNavigationBarItem(
            // tooltip: 'chats',
            icon: Icon(
              Icons.three_k,
            ),
            label: 'List3',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.four_k,
              ),
              label: 'List4'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.five_k,
              ),
              label: 'list5'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.six_k,
              ),
              label: 'list6'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.seven_k,
              ),
              label: 'list7'),
        ],
      ),
    );
  }
}
