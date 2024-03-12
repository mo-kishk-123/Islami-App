import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ahadeth extends StatelessWidget {
  static const String routeName = "Ahadeth";

  const Ahadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            height: 175, child: Image.asset("assets/images/hadeth_logo.png")),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
        Text("الأحاديث",
            style: GoogleFonts.elMessiri(
              color: Color(0xFF242424),
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center),
        Divider(
          thickness: 3,
          color: Color(0xFFB7935F),
        ),
      ],
    );
  }
}
