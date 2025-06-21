// step13 : TextFormField for input
// step14 : DropdownButton for category selection

import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});
  

  @override
  State<AddForm> createState() => _AddFormState();
}
class _AddFormState extends State<AddForm> {
// step15 : form state management
// step16 : submit button 
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.Developer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title : "Add Person",
        home : Scaffold(
          appBar: AppBar(
            title: const Text("Add Person"),
            backgroundColor: const Color.fromARGB(255, 243, 33, 33),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              // step15 : form state management
              // step16 : submit button 
              key: _formKey,

               child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",),                 
                  // step15 : form state management
                  // step16 : submit button
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = 
                              value!; //!is used to assert that value is not null
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Age",
                  
                  ),
                  keyboardType: TextInputType.number,
                  // step15 : form state management
                  // step16 : submit button
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Age';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString()); //!is used to assert that value is not null
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<Job>(
                  // step15 : form state management
                  // step16 : submit button
                  value: _job,

                  decoration: const InputDecoration(
                    labelText: "Job",
                   
                  ),
                  items: Job.values.map((key) {
                    return DropdownMenuItem<Job>(
                      value: key,
                      child: Text(key.title),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // print(value);
                  // step15 : form state management
                  // step16 : submit button
                  setState(() {
                    _job = value!;
                 
                  });
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed:() {
                  // step15 : form state management
                  // step16 : submit button
                  _formKey.currentState!.save();
                  _formKey.currentState!.validate();
                  personList.add(
                    Person(
                      name: _name,
                      age: _age,
                      job: _job,
                    ),
                  );
                  print(personList.length);
                  _formKey.currentState!.reset();
                   
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 243, 33, 33),
                  ),
                  child:Text(
                    "Submit", style: TextStyle(color: Colors.white,fontSize: 20) 
                  ),
                )
              ], 
            )
           
          ),
        ),
      ),
      );
  }
}
 