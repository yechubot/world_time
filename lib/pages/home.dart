import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    //처음 빌드
    //world time class에서 설정한 argument 받도록 하기, context가 필요하기 때문에 build 안에 작성한다.
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    // set background
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png'; //받는 불리언 값이 true 면 day png, false 면 night png
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor, //데이타임에 따라 컬러 다르게 설정함
      body: SafeArea(
        child: Container(// 이를 추가해서 box decoration 속성으로 배경을 추가함
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(
                        Icons.edit_location,
                        color: Colors.grey[300]),
                    label: Text(
                      'Edit location',
                      style: TextStyle(
                        color:Colors.grey[300],
                      ),
                    )),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color:Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(data['time'], style: TextStyle(
                    fontSize: 66.0,
                    color:Colors.white,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
