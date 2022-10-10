import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogApp extends StatefulWidget {
  const CatalogApp({Key? key}) : super(key: key);

  @override
  State<CatalogApp> createState() => _CatalogAppState();
}

class _CatalogAppState extends State<CatalogApp> {
  final images = [
    'https://static.techspot.com/images/products/2020/smartphones/org/2020-10-20-product.png',
    'https://www.bhphotovideo.com/images/images2500x2500/google_ga01986_us_pixel_5_128gb_5g_1595336.jpg',
    'https://www.mobiarena.si/wp-content/uploads/2020/12/macbooki-air-m1-chip-2048x1573.jpg',
    'https://d28i4xct2kl5lp.cloudfront.net/product_images/None_e863556a-c099-457f-b3f1-1fbd0b983cd8.jpg'
  ];
  final names = [
    'Iphone 12 Pro',
    'Pixel 5',
    'M1 Macbook Air',
    'PlayStation 5',
  ];
  final discript = [
    'Apple iphone 12th generation',
    'Google pixel 5th generation',
    'Apple Macbook Air with silicon',
    'Sony Playstation 5th generation',
  ];
  final price = ['\$999', '\$699', '\$1099', '\$500'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Catalog App",
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "Trending products",
                style: GoogleFonts.roboto(
                    fontSize: 20,
                    color: Color(0xFF545454),
                    fontWeight: FontWeight.w400),
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      elevation: 2,
                      child: SizedBox(
                        height: 120,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  color: Colors.white12,
                                  height: 90,
                                  width: 90,
                                  child: Image.network(
                                    images[index],
                                  )),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  names[index],
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(discript[index]),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      price[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Buy"),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.deepPurple,
                                        fixedSize: Size(70, 1),
                                      ),
                                      // ButtonStyle(
                                      //   backgroundColor:MaterialStateProperty.all(Colors.deepPurple)
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
