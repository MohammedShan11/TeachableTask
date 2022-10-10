import 'package:flutter/material.dart';
class StackSix extends StatefulWidget {
  const StackSix({Key? key}) : super(key: key);

  @override
  State<StackSix> createState() => _StackSixState();
}

class _StackSixState extends State<StackSix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(color: Colors.deepPurple[400]),
              ),
              Positioned(
                top: 200,
                left: 15,
                child: Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(color: Colors.deepPurple[500]),
                ),
              ),
              Positioned(
                top: 380,
                left: 30,
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(color: Colors.deepPurple[600]),
                ),
              ),
              Positioned(
                top: 580,
                left: 45,
                child: Container(
                  width: 110,
                  height: 110,
                  decoration: BoxDecoration(color: Colors.deepPurple[700]),
                ),
              ),
              Positioned(
                top: 780,
                left: 60,
                child: Container(
                  width: 50,
                  height: 70,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
            ],
          ),




          // Positioned(
          //   top: 75,
          //   left: 75,
          //   child: Container(
          //     width: 50,
          //     height: 50,
          //     decoration: BoxDecoration(color: Colors.black54),
          //   ),
          // ),
        ],
      ),
    );
  }
}
