import 'package:flutter/material.dart';

import '../stack/stackhome.dart';

class CitiesOfWorld extends StatefulWidget {
  const CitiesOfWorld({Key? key}) : super(key: key);

  @override
  State<CitiesOfWorld> createState() => _CitiesOfWorldState();
}

class _CitiesOfWorldState extends State<CitiesOfWorld> {
  final images = [
    'https://www.agrashivtourandtravels.com/wp-content/uploads/2020/07/red-fort.jpg',
    'https://register.london/wp-content/uploads/2017/10/Day-time-London-skyline.jpg',
    'https://tobyharriman.com/wp-content/uploads/2018/07/Downtown-Vancouver-Sunset-Skyline-Aerial.jpg',
    'https://www.rd.com/wp-content/uploads/2016/01/01-statue-of-liberty-facts.jpg',
  ];
  final city = ['Delhi', 'London', 'Vancouver', 'NewYork'];
  final country = ['India', 'Britain', 'Canada', 'USA'];
  final pop = ['10 mill', '8 mill', '2.4 mill', '8.1 mill'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => StackHome()));
          },
          child: Icon(Icons.explore),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Colors.amber,
            title: Center(
                child: Text(
              'Cites Around World',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: city.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Card(
                    elevation: 2,
                    child: SizedBox(
                      height: 140,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.white12,
                              height: 140,
                              width: 170,
                              child: Image.network(
                                images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  city[index],
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  country[index],
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Population:',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Text(pop[index]),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
