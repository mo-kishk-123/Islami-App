import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/ahadeth_details/ahadeth_details_provider.dart';
import 'package:islamy_app/ahadeth_details/hadeth_details.dart';
import 'package:provider/provider.dart';
import '../../models/hadeth_model.dart';

class Ahadeth extends StatelessWidget {
  static const String routeName = "Ahadeth";

  Ahadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AhadethDetailsProvider>(
      create: (context) => AhadethDetailsProvider()..loadHadethFile(),
      builder: (context, child) {
        var provider = Provider.of<AhadethDetailsProvider>(context);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 150,
                child: Image.asset("assets/images/hadeth_logo.png")),
            Divider(
              thickness: 3,
              color: Color(0xFFB7935F),
            ),
            Text(
              AppLocalizations.of(context)!.ahadeth,
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
                          arguments: provider.ahadethData[index]);
                    },
                    child: Text(provider.ahadethData[index].title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium),
                  );
                },
                itemCount: provider.ahadethData.length,
              ),
            )
          ],
        );
      },
    );
  }
}
