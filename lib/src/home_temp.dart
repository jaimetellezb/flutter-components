import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Temp'),
      ),
      body: ListView(children: [
        ListTile(
          title: Text('ListTile Title'),
        ),
        Divider(),
        ListTile(
          title: Text('ListTile Title'),
        ),
        Divider(),
        ListTile(
          title: Text('ListTile Title'),
        ),

        ],
      ),
    );
  }
}
