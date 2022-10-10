import 'package:flutter/material.dart';
class StackTwo extends StatefulWidget {
  const StackTwo({Key? key}) : super(key: key);

  @override
  State<StackTwo> createState() => _StackTwoState();
}

class _StackTwoState extends State<StackTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Kindacode.com')),
        ),
        body: Stack(
          children: [
            Positioned(
              left: 120,
              child: Container(
                  width: 180,
                height: 100,
                child: Center(child: Text('Box #1')),
                decoration: BoxDecoration(color: Colors.amber),
              ),
            ),
            Positioned(
              top: 500,
              left: 90,
              child: Container(
                  width: 180,
                height: 180,
                child: Center(child: Text('Box #2')),
                decoration: BoxDecoration(color: Colors.purple),
              ),
            ),
            Positioned(
              top: 200,
              left: 180,
              child: Container(
                  width: 140,
                height: 300,
                child: Center(child: Text('Box #3')),
                decoration: BoxDecoration(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
