// // Step10: make a model for store data
// class Person {
//   String name;
//   int age;
//   String job;


// // Construtor
// Person({
//     required this.name,
//     required this.age,
//     required this.job,
//   });
// }
// List<Person> personList = [
//   Person(name: "Isak", age: 22, job: "Developer"),
//   Person(name: "Wirtz", age: 23, job: "Designer"),
//   Person(name: "Kerkaze", age: 24, job: "Manager"),
//   Person(name: "Frimpong", age: 25, job: "Analyst"),
//   Person(name: "Mamardashvili", age: 26, job: "Tester"),
// ];

// Step11: use a enum
import 'package:flutter/material.dart';

enum Job {
  Developer(
    title: "Developer",
    image: "assets/images/arm.jpg",
    color: Color(0xFF4CAF50) // Green color for Developer
  ),
  Designer(
    title: "Designer",
    image: "assets/images/arm.jpg",
    color: Color(0xFF2196F3) // Blue color for Designer
  ),
  Manager(
    title: "Manager",
    image: "assets/images/arm.jpg",
    color: Color(0xFFFF9800) // Orange color for Manager
  ),
  Analyst(
    title: "Analyst",
    image: "assets/images/arm.jpg",
    color: Color.fromARGB(255, 246, 0, 0) // Red color for Analyst
  ),
  Tester(
    title: "Tester",
    image: "assets/images/arm.jpg",
    color: Color.fromARGB(0, 157, 0, 255) // Purple color for Tester
  );

  final String title;
  final String image;
  final Color color;
  // constuctor
  const Job({
    required this.title,
    required this.image,
    required this.color,
  });
}



class Person {
  String name;
  int age;
  Job job;


// Construtor
Person({
    required this.name,
    required this.age,
    required this.job,
  });
}
List<Person> personList = [
  Person(name: "Isak", age: 22, job: Job.Developer),
  Person(name: "Wirtz", age: 23, job: Job.Designer),
  Person(name: "Kerkaze", age: 24, job: Job.Manager),
  Person(name: "Frimpong", age: 25, job: Job.Analyst),
  Person(name: "Mamardashvili", age: 26, job:  Job.Tester),
];