import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading';

  void setupWorldTime() async{ // await 를 사용하려면 async 붙여야 한다는 걸 기억하자
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime(); //인스턴스 만들고 시간가져오는 메소드 호출할 수 있음.
    //getTime()은 async 라는 걸 기억해야 한다. await를 붙여서 바로 print되지 못하게 만든다.
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}
