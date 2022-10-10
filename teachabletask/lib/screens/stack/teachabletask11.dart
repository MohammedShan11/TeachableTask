import 'package:flutter/material.dart';
class StackFour extends StatefulWidget {
  const StackFour({Key? key}) : super(key: key);

  @override
  State<StackFour> createState() => _StackFourState();
}

class _StackFourState extends State<StackFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 100,
            height: 120,
            child: Center(child: Text('Non-Positioned')),
            decoration: BoxDecoration(color: Colors.cyan[400]),
          ),
        ),
        Positioned(
          top: 120,
          left: 105,
          child: Container(
            width: 280,
            height: 380,
            child: Center(child: Text('Positioned')),
            decoration: BoxDecoration(color: Colors.amber),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 180,
            height: 250,
            child: Center(child: Text('Aligned')),
            decoration: BoxDecoration(color: Colors.brown),
          ),
        )
      ],
    ),
    );
  }
}
