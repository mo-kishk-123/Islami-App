import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/models/sura_model.dart';
import 'package:islamy_app/provider/my_provider.dart';
import 'package:islamy_app/sura_details/sura_details_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "Sura Details";

  SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)!.settings.arguments as SuraModel;

    return ChangeNotifierProvider<SuraDetailsProvider>(
      create: (context) => SuraDetailsProvider()..loadFile(model.index),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvider>(context);
        var provider1 = Provider.of<MyProvider>(context);

        // another solve for load File

        // if(provider.verses.isEmpty){
        //   provider.loadFile(model.index);
        // }

        return Stack(
          children: [
            Image.asset(provider1.getBackGroundPath(),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill),
            Scaffold(
              appBar: AppBar(
                title: Text(
                  model.name,
                ),
              ),
              body: Card(
                color: Colors.white38.withOpacity(.5),
                margin: EdgeInsets.all(15),
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                            height: 7,
                          ),
                      itemBuilder: (context, index) {
                        return Text(
                          provider.verses[index],
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium,
                        );
                      },
                      itemCount: provider.verses.length),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
