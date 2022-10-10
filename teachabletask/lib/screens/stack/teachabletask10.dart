import 'package:flutter/material.dart';
class StackThree extends StatefulWidget {
  const StackThree({Key? key}) : super(key: key);

  @override
  State<StackThree> createState() => _StackThreeState();
}

class _StackThreeState extends State<StackThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Kindacode.com')),
      ),
      body: Stack(
        children: [


          Positioned(
          top:180,
          left: 18,
          child: Container(
          height: 360,
          width: 360,
          decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(300),),

      ),
        ),
        Positioned(
          top:180,
          left: 20,
          child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(300),),

      ),
        ),
          Positioned(
            top:150,
            left: 200,
            child: Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(100),),

            ),
          ),

          Positioned(
          top:330,
          left: 180,
          child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(100),),

      ),
        ),
          Positioned(
            top:80,
            left: 180,
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(color: Colors.white),

            ),
          ),
        ],
      ),
    );
  }
}
