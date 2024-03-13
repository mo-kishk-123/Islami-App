import 'package:flutter/material.dart';

class Radioo extends StatelessWidget {
  static const String routeName = "Radio";

  const Radioo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox(
          height: 57,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          height: 57,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_previous),
              color: Color(0xFFB7935F),
              iconSize: 50,
            ),
            SizedBox(
              width: 50,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_arrow),
              color: Color(0xFFB7935F),
              iconSize: 50,
            ),
            SizedBox(
              width: 50,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_next),
              color: Color(0xFFB7935F),
              iconSize: 50,
            ),
          ],
        )
      ],
    );
  }
}
