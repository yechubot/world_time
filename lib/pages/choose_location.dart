import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  void initState() {//runs only once when it starts
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {// when data changed, build method is called
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(//뒤로가기 버튼 자동으로 생김..?
        backgroundColor: Colors.blue[900],
        title: Text('choose a location'),
        centerTitle: true,
        elevation: 0,
      ),

    );
  }
}
