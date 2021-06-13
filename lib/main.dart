import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {

  final ButtonStyle style=ElevatedButton.styleFrom(
     primary: Colors.white,
    onPrimary: Colors.blue,
    textStyle:const TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.bold,
      
    )
  );
  void quetionAnswer(){
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Quiz',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My FirstApp',
          ),
        ),
        body: Column(
          children: [
            ElevatedButton(
             child: const Text('Answer1'),
             onPressed:(){},
             style: style
           ),
           ElevatedButton(
             child: const Text('Answer2'),
             onPressed:(){},
             style: style
           ),
           ElevatedButton(
             child: const Text('Answer3'),
             onPressed:(){},
             style: style
           ),
            ElevatedButton(
             child: const Text('Answer4'),
             onPressed:(){},
             style: style
           )
          ],
        ),
      ),
    );
  }
}
