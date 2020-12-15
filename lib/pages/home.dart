import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //전에는 앱바를 사용해서 텍스트 내려갔음
        //safearea를 사용하면 텍스트가 내려감
        child: Column(
          children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit location')),
          ],
        ),
      ),
    );
  }
}
