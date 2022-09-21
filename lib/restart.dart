import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final VoidCallback restartQuestion;

  const Restart({super.key, required this.restartQuestion});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green.shade700), foregroundColor: MaterialStateProperty.all(Colors.pink.shade500)
        ),
        onPressed: restartQuestion,
        child: const Text(
          "you did it - restart",
          
        ),
      ),
    );
  }
}
