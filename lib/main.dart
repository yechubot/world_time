
import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';

void main() =>
    runApp(MaterialApp(
      initialRoute: '/',//what will be the first route? when load up
      routes: {
        '/': (context) => Loading(),
        '/home':(context)=> Home(),
        '/location':(context)=> ChooseLocation(),
      },
    ));
