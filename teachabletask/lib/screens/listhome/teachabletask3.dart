import 'package:flutter/material.dart';

class SamListTile extends StatefulWidget {
  const SamListTile({Key? key}) : super(key: key);

  @override
  State<SamListTile> createState() => _SamListTileState();
}

class _SamListTileState extends State<SamListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simple ListView in Flutter'),
        ),
        body: Column(
          children: [
            ListTile(
              title: Text('Alarm'),
              leading: Icon(Icons.alarm),
            ),
            ListTile(
              title: Text('Android'),
              leading: Icon(Icons.android),
            ),
            ListTile(
              title: Text('Announcement'),
              leading: Icon(Icons.announcement),
            ),
            ListTile(
              title: Text('Apps'),
              leading: Icon(Icons.apps),
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),
            ),
            ListTile(
              title: Text('Assessment'),
              leading: Icon(Icons.assessment),
            ),
            ListTile(
              title: Text('Backup'),
              leading: Icon(Icons.backup),
            ),
          ],
        ));
  }
}
