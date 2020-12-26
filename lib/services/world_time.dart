import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; //location name for the UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint

  //네임 파라미터
  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      //loading.dart의 getTime()에 await를 붙일때..
      //Future를 async앞에 붙여줘야 한다.


      //make request
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body); // 데이터가 저장되어 있는 body를 디코딩

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      print(offset);

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set the time property
      time = now.toString();
    } catch (e) {
      //error msg
      print('caught error: $e');
      //time = null되니까 에러 메시지 길게 뜸 다음과 같이 time을 설정해줌
      time = 'could not get time data';
    }
  }
}

//WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url:'Europe/Berlin');
// eg) instance.getTime();
