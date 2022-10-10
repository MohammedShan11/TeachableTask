import 'package:flutter/material.dart';

class StackOne extends StatefulWidget {
  const StackOne({Key? key}) : super(key: key);

  @override
  State<StackOne> createState() => _StackOneState();
}

class _StackOneState extends State<StackOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text('Stack Over Flow')),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.navigate_next),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[300],
        child: Stack(
          children: [
            Positioned(
              top: 200,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 310,
                  width: 372,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(5, 5),
                            blurRadius: 10)
                      ],
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Positioned(
              top: 160,
              left: 140,
              child: Container(
                height: 100,
                width: 100,
                child: Icon(Icons.person),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 10)
                  ],
                ),
              ),
            ),
            Positioned(
                top: 280,
                left: 90,
                child: Text(
                  'Maria Elliot',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
            Positioned(
                top: 340,
                left: 120,
                child: Text(
                  'Albany,NewYork',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.blue),
                )),
            Positioned(
                top: 400,
                left: 30,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Purchased",
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        Text(
                          "12K",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Wished",
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        Text(
                          "12K",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Likes",
                          style: TextStyle(fontSize: 25, color: Colors.grey),
                        ),
                        Text(
                          "12K",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
