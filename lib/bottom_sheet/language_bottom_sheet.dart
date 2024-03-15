import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/my_them.dart';
import 'package:islamy_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({super.key});

  var IsEnglish = true;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.english,
                        style: GoogleFonts.elMessiri(
                            color: provider.languageCode == "en"
                                ? MyThemData.yellowColor
                                : MyThemData.primaryColor,
                            fontSize: 25)),
                    Spacer(),
                    if (provider.languageCode == "en") ...[
                      Icon(Icons.done, size: 30, color: MyThemData.primaryColor)
                    ]
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.arabic,
                        style: GoogleFonts.elMessiri(
                            color: provider.languageCode == "ar"
                                ? MyThemData.yellowColor
                                : MyThemData.primaryColor,
                            fontSize: 25)),
                    Spacer(),
                    if (provider.languageCode == "ar") ...[
                      Icon(Icons.done, size: 30, color: MyThemData.primaryColor)
                    ]
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
