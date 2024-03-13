import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/hadeth_details.dart';

import '../../models/hadeth_model.dart';

class Ahadeth extends StatefulWidget {
  static const String routeName = "Ahadeth";

  Ahadeth({super.key});

  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
  List<HadethModel> ahadethData = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethData.isEmpty) {
      loadHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            height: 150, child: Image.asset("assets/images/hadeth_logo.png")),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              color: Color(0xFFB7935F),
              indent: 50,
              endIndent: 50,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                      arguments: ahadethData[index]);
                },
                child: Text(ahadethData[index].title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium),
              );
            },
            itemCount: ahadethData.length,
          ),
        )
      ],
    );
  }

  loadHadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((hadethFile) {
      List<String> ahadeth = hadethFile.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> hadethContent = hadethLines;
        ahadethData.add(HadethModel(title: title, content: hadethContent));
      }
      setState(() {});
    });
  }
}
