import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/Home/tabs/ahadeth_tab.dart';
import 'package:islamy_app/Home/home.dart';
import 'package:islamy_app/Home/tabs/quran_tab.dart';
import 'package:islamy_app/Home/tabs/radio_tab.dart';
import 'package:islamy_app/Home/tabs/sebha_tab.dart';
import 'package:islamy_app/Home/tabs/setting_tab.dart';
import 'package:islamy_app/my_them.dart';
import 'package:islamy_app/provider/my_provider.dart';
import 'package:islamy_app/sura_details/sura_details.dart';
import 'package:provider/provider.dart';

import 'ahadeth_details/hadeth_details.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    // TODO: implement build
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: Locale(provider.languageCode),
      theme: MyThemData.lightThem,
      darkTheme: MyThemData.darkThem,
      themeMode: provider.themeMode,
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
