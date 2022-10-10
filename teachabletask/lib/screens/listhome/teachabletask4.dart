import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/rendering.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List names=['shan','zamil','sldfa',';adslfj','ksjdf','sldkf','lsdkj','wierhf','sdhjf','iwerb','awieb','khsdf','skdf',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SimpleContactList'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: names.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 1,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(names[index]),
                  subtitle: Text('1234234345234'),
                  trailing: Icon(
                    Icons.navigate_next,
                    size: 40,
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://pic.onlinewebfonts.com/svg/img_208256.png",
                    ),
                    backgroundColor:
                        Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                            .withOpacity(1.0),
                    //Colors.primaries[Random().nextInt(Colors.primaries.length)]
                    radius: 25,
                  ),
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}
