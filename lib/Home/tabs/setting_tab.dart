import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy_app/bottom_sheet/language_bottom_sheet.dart';
import 'package:islamy_app/bottom_sheet/theme_bottom_sheet.dart';
import 'package:islamy_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class Setting extends StatelessWidget {
  static const String routeName = "Setting";

  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Text(AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: LanguageBottomSheet(),
                    );
                  },
                );
              },
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      provider.getlunguName(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 8),
            child: Text(AppLocalizations.of(context)!.theme,
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: ThemeBottomSheet(),
                    );
                  },
                );
              },
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      provider.getThemeName(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
