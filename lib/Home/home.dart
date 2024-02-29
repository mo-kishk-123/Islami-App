import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/Home/tabs/ahadeth_tab.dart';
import 'package:islamy_app/Home/tabs/quran_tab.dart';
import 'package:islamy_app/Home/tabs/radio_tab.dart';
import 'package:islamy_app/Home/tabs/sebha_tab.dart';
import 'package:islamy_app/Home/tabs/setting_tab.dart';

class Home extends StatefulWidget {
  static const String routeName = "Home";

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> tabs = [QuranTab(), Sebha(), Ahadeth(), Radioo(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/default_bg.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Text("إسلامي",
                style: GoogleFonts.elMessiri(
                  color: Color(0xFF242424),
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                )),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xFFB7935F),
              showSelectedLabels: true,
              showUnselectedLabels: false,
              selectedFontSize: 15,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              unselectedIconTheme: IconThemeData(
                size: 35,
              ),
              selectedIconTheme: IconThemeData(
                size: 30,
              ),
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                    label: "القران"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                    label: "سبحه"),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                    label: "الاحاديث"),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                    label: "راديو"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "الاعدادات"),
              ]),
          body: tabs[index]),
    );
  }
}
