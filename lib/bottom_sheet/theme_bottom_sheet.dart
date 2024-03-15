import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/my_them.dart';
import 'package:islamy_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

// AppLocalizations.of(context)!.setting,

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.chaneTheme(ThemeMode.light);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.light,
                        style: GoogleFonts.elMessiri(
                            color: provider.themeMode == ThemeMode.light
                                ? MyThemData.yellowColor
                                : MyThemData.primaryColor,
                            fontSize: 25)),
                    Spacer(),
                    if (provider.themeMode == ThemeMode.light) ...[
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
              provider.chaneTheme(ThemeMode.dark);
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(AppLocalizations.of(context)!.dark,
                        style: GoogleFonts.elMessiri(
                            color: provider.themeMode == ThemeMode.dark
                                ? MyThemData.yellowColor
                                : MyThemData.primaryColor,
                            fontSize: 25)),
                    Spacer(),
                    if (provider.themeMode == ThemeMode.dark) ...[
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
