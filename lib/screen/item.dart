// step8: stateful widget
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 10;

// void addQuantity() {
//     setState(() {
//       quantity++;
//     });
//   }

// void subtractQuantity() {
//     setState(() {
//       if (quantity > 0) {
//         quantity--;
//       }
//     });
//   }

// step 9: Listview widget
List data = ["Isak", "Wirtz", "Kerkaze", "Frimpong", "Mamardashvili"];

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //      children: [
    //       Text(
    //         "Quantity: $quantity",
    //         style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(height: 20),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(
    //             onPressed: addQuantity,
    //             child: const Text("Add"),
    //           ),
    //           const SizedBox(width: 20),
    //           ElevatedButton(
    //             onPressed: subtractQuantity,
    //             child: const Text("Subtract"),
    //           ),
    //         ],
    //       ),
    //      ],
    //   ),
    // );
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          child: Text(
            data[index],
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        );

    }, 
    itemCount: data.length
    );
  }
}
// step 10: Listview.builder widget