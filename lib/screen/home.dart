// step4: sperate the Home widget into its own file

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

/// step5: container, column, main axis, cross axis
  @override
  Widget build(BuildContext context) {
    //step 6: Image widgets
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: 
      [Image.asset("assets/images/arm.jpg"),
      const SizedBox(height: 10),
      Image.network(
        "https://preview.redd.it/how-many-zoros-would-it-take-to-beat-gear-5-luffy-v0-65u3ed5p8n0d1.jpg?width=640&crop=smart&auto=webp&s=8675327f0bbd9a73faddba7dd4263114c36d9466"
      )
      ],
      

    );

  }
}