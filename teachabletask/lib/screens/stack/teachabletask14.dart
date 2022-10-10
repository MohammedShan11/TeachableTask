import 'package:flutter/material.dart';

import '../listhome/listhome.dart';
class StackSeven extends StatefulWidget {
  const StackSeven({Key? key}) : super(key: key);

  @override
  State<StackSeven> createState() => _StackSevenState();
}

class _StackSevenState extends State<StackSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ListHome()));
        },
        child: Icon(Icons.home),
      ),
      body:Stack(
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.deepPurple[400]),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(color: Colors.deepPurple[500]),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(color: Colors.deepPurple[600]),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(color: Colors.deepPurple[700]),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(color: Colors.deepPurple[800]),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
