import 'package:flutter/material.dart';
import 'package:islamy_app/Home/tabs/ahadeth_tab.dart';
import 'package:islamy_app/Home/home.dart';
import 'package:islamy_app/Home/tabs/quran_tab.dart';
import 'package:islamy_app/Home/tabs/radio_tab.dart';
import 'package:islamy_app/Home/tabs/sebha_tab.dart';
import 'package:islamy_app/Home/tabs/setting_tab.dart';



void main (){
  runApp(MyApp ());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName : (context) => Home(),
        QuranTab.routeName : (context) => QuranTab(),
        Sebha.routeName : (context) => Sebha(),
        Ahadeth.routeName : (context) => Ahadeth(),
        Radioo.routeName : (context) => Radioo(),
        Setting.routeName : (context) => Setting(),
      },
    );
  }

}