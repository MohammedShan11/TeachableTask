import 'package:flutter/material.dart';

class EmailListView extends StatefulWidget {
  const EmailListView({Key? key}) : super(key: key);

  @override
  State<EmailListView> createState() => _EmailListViewState();
}

class _EmailListViewState extends State<EmailListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("EmailListView")),
      ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: ListView.separated(
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    title: Text('Email'),
                    //leading: Icon(Icons.email),
                    subtitle: Text('sampleemail@gmail.com'),
                    trailing: Icon(Icons.arrow_forward),
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return Divider();
                },
                itemCount: 15)));
  }
}
