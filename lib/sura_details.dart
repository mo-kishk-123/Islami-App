import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "Sura Details";

  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(model.index);
    }
    return Stack(
      children: [
        Image.asset("assets/images/default_bg.png",
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(
              model.name,
            ),
          ),
          body: Card(
            color: Colors.white38.withOpacity(.5),
            margin: EdgeInsets.all(15),
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(
                        height: 7,
                      ),
                  itemBuilder: (context, index) {
                    return Text(
                      verses[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    );
                  },
                  itemCount: verses.length),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    print(lines);
    setState(() {});
  }
}
