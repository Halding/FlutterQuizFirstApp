import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;
  const Answer(this.selectHandler, this.answerText, {super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green.shade700),
                
              ),
              onPressed: selectHandler,
              child: Text(answerText,
              style: const TextStyle(color: Colors.black),),
            ),
    );
  }
}