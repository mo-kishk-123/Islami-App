import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/models/hadeth_model.dart';


class AhadethDetailsProvider extends ChangeNotifier{

  List<HadethModel> ahadethData = [];

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
      notifyListeners();
    });
  }

}