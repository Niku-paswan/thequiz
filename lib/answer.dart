import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function selectHandler;
  final VoidCallback selectAns;
  final String answerText;
  Answer(this.selectAns,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectAns,
        child:  Text(answerText),
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(
        //     Colors.pink
        //   )
            
          
        // ),
      ),
    );
  }
}
