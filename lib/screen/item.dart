import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';
// Step 12 : Use google fonts
import 'package:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: personList.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    personList[index].name,
                    // style: const TextStyle(
                    //   fontSize: 24,
                    //   color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                    // ),

                    // Step 12: Use google fonts
                    style: GoogleFonts.kanit(
                      fontSize: 24,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  Text(
                    "job:${personList[index].job.title}",
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color: Color.fromARGB(255, 238, 130, 130),
                    ),
                  ),
                  Text(
                    personList[index].age.toString(),
                    style: GoogleFonts.kanit(
                      fontSize: 18,
                      color:  Color.fromARGB(255, 255, 1, 1),
                    ),
                  ),
                  Image.asset(
                    personList[index].job.image,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}