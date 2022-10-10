import 'package:flutter/material.dart';
class CheckBoxListTile extends StatefulWidget {
  const CheckBoxListTile({Key? key}) : super(key: key);

  @override
  State<CheckBoxListTile> createState() => _CheckBoxListTileState();
}

class _CheckBoxListTileState extends State<CheckBoxListTile> {
  final icon=[
    'https://3.bp.blogspot.com/-s2UReH7SLaU/UcMIugUXl7I/AAAAAAAAnaE/-AQgtBXoVWg/s200/android-icon.png',
    'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
    'https://pluspng.com/img-png/logo-apple-ios-png-iphone-ve-ios-512.png',
    'https://pngimg.com/uploads/php/php_PNG25.png',
    'https://1.bp.blogspot.com/-sqAjIvOtpXI/XYoCmqOyMwI/AAAAAAAAJig/CowR8wgEauEs-RXN2IPmLYkC7NHoHuA3gCLcBGAsYHQ/s1600/node-js-logo.png',
  ];
  final names=[
    'Android','Flutter','IOS','PHP','Node',
  ];
  var ischecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('CheckBox ListTile Demo',style: TextStyle(color: Colors.black),)),
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(icon[index]),
          ) ,
          title:Text(names[index]) ,
          trailing: Checkbox(
              activeColor: Colors.pink,
              value: ischecked,
              onChanged: (bool? val) {
                setState(() {
                  ischecked = val!;
                });
              }),
        );
        }, separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: 1,
          );
      },

      ),
    );
  }
}
