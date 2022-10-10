import 'package:flutter/material.dart';

class ListGridView extends StatefulWidget {
  const ListGridView({Key? key}) : super(key: key);

  @override
  State<ListGridView> createState() => _ListGridViewState();
}

class _ListGridViewState extends State<ListGridView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(backgroundColor: Colors.white70),
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            )
          ],
          title: Center(child: Text('List or Grid View')),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.list),
            ),
            Tab(
              icon: Icon(Icons.grid_view),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    leading: Icon(Icons.assignment_ind),
                    title: Text("Person $index"),
                    subtitle: Text("Subtitile $index"),
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return Divider(
                    thickness: 1,
                  );
                },
                itemCount: 10),
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: Text('hai'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: Text('hai'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: Text('hai'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: Text('hai'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.teal[500],
                  child: Text('hai'),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: Text('hai'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
