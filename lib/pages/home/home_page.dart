import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: TTHomeContent(),
      ),
    );
  }
}

class TTHomeContent extends StatefulWidget {
  @override
  _TTHomeContentState createState() => _TTHomeContentState();
}

class _TTHomeContentState extends State<TTHomeContent> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
