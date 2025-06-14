// step4: sperate the Home widget into its own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

/// step5: container, column, main axis, cross axis
  @override
  Widget build(BuildContext context) {
    // return Column(
    //  // mainAxisAlignment: MainAxisAlignment.start,
    //  // mainAxisAlignment: MainAxisAlignment.center,
    //  // mainAxisAlignment: MainAxisAlignment.end,
    //  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //  // mainAxisAlignment: MainAxisAlignment.spaceAround,
    //  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //  crossAxisAlignment: CrossAxisAlignment.stretch,

    //   children: [
    //     Container(
    //       color: Colors.blueAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello ",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //         ),
    //     ),
    //     Container(
    //       color: Colors.blueAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello ",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //         ),
    //     ),
    //     Container(
    //       color: Colors.blueAccent,
    //       padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    //       child: Text(
    //         "Hello",
    //         style: TextStyle(
    //           fontSize: 20,
    //           letterSpacing: 3,
    //           color: Colors.white,
    //         ),
    //         ),
    //     ),
    //   ],
    // );

    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.blueAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello ",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 3,
              color: Colors.white,
            ),
            ),
        ),
        Container(
          color: Colors.blueAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello ",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 3,
              color: Colors.white,
            ),
            ),
        ),
        Container(
          color: Colors.blueAccent,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Text(
            "Hello",
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 3,
              color: Colors.white,
            ),
            ),
        ),
      ],
    );
  }
}