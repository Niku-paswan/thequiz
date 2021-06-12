import 'package:flutter/material.dart';

void main() {}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'The Quiz',
      home: Text('Home'),
      /**
       * 
       * 
       * Like we have a class  as person 
       * 
       * class person {
       * // person class have some varable 
       * //like this
       * int age;
       * String name;
       * 
       * /**
       * remember class name is known as constractor
       *  */

       * //unName constractor
       * person(this.age,this.name);
       * name constractor // always add required inside the constractor
       * for example
       * Person({required this.age  require this.name});
       * 
       * }
       */
    );
  }
}
