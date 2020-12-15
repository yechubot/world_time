import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(//뒤로가기 버튼 자동으로 생김..?
        backgroundColor: Colors.blue[900],
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('choose location screen'),
    );
  }
}
