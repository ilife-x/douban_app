import 'package:flutter/material.dart';

class GroupePage extends StatefulWidget {
  @override
  _GroupePageState createState() => _GroupePageState();
}

class _GroupePageState extends State<GroupePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小组'),
      ),
      body: Center(
        child: Text('小组'),
      ),
    );
  }
}
