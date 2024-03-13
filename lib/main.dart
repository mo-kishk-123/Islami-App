import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/Home/tabs/ahadeth_tab.dart';
import 'package:islamy_app/Home/home.dart';
import 'package:islamy_app/Home/tabs/quran_tab.dart';
import 'package:islamy_app/Home/tabs/radio_tab.dart';
import 'package:islamy_app/Home/tabs/sebha_tab.dart';
import 'package:islamy_app/Home/tabs/setting_tab.dart';
import 'package:islamy_app/my_them.dart';
import 'package:islamy_app/sura_details.dart';

import 'hadeth_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemData.lightThem,
      darkTheme: MyThemData.darkThem,
      themeMode: ThemeMode.light,
      initialRoute: Home.routeName,
      routes: {
        Home.routeName: (context) => Home(),
        QuranTab.routeName: (context) => QuranTab(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        Sebha.routeName: (context) => Sebha(),
        Ahadeth.routeName: (context) => Ahadeth(),
        HadethDetails.routeName: (context) => HadethDetails(),
        Radioo.routeName: (context) => Radioo(),
        Setting.routeName: (context) => Setting(),
      },
    );
  }
}
