import 'package:flutter/material.dart';
import 'package:islamy_app/models/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth details";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var modal = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset("assets/images/default_bg.png",
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
          appBar: AppBar(
            title: Text(modal.title),
          ),
          body: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * .7,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        modal.content[index],
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                  itemCount: modal.content.length),
            ),
          ),
        ),
      ],
    );
  }
}
