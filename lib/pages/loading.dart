import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    // await 를 사용하려면 async 붙여야 한다는 걸 기억하자

    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime(); //인스턴스 만들고 시간가져오는 메소드 호출할 수 있음.
    //홈에서는 데이터에 접근 못함, argument로 보내줄 수 있다.
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime
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
      backgroundColor: Colors.blue[900],
      body: Center(
        //spinkit를 사용해서 로딩 화면
          child:SpinKitCircle(
            color: Colors.white,
            size: 80.0,
          ),
      ),
    );
  }
}
