import 'package:flutter/material.dart';

class StackFive extends StatefulWidget {
  const StackFive({Key? key}) : super(key: key);

  @override
  State<StackFive> createState() => _StackFiveState();
}

class _StackFiveState extends State<StackFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.deepPurple[400]),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(color: Colors.deepPurple[500]),
              ),
            ),
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(color: Colors.deepPurple[600]),
              ),
            ),
            Positioned(
              top: 45,
              left: 45,
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(color: Colors.deepPurple[700]),
              ),
            ),
            Positioned(
              top: 60,
              left: 60,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(color: Colors.deepPurple[800]),
              ),
            ),
            Positioned(
              top: 75,
              left: 75,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.black54),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),
        Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.deepPurple[400]),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(color: Colors.deepPurple[500]),
              ),
            ),
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(color: Colors.deepPurple[600]),
              ),
            ),
            Positioned(
              top: 45,
              left: 45,
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(color: Colors.deepPurple[700]),
              ),
            ),
            Positioned(
              top: 60,
              left: 60,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(color: Colors.deepPurple[800]),
              ),
            ),
            Positioned(
              top: 75,
              left: 75,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(color: Colors.black54),
              ),
            ),
            Positioned(
              top: 180,
              left: 0,
              child: Container(
                child: Text(
                  'Yay for LogRocket!',
                  style: TextStyle(color: Colors.white),
                ),
                width: 200,
                height: 30,
                decoration: BoxDecoration(color: Colors.blue),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
