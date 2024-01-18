import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchToQuestionScreen, {super.key});

  final void Function() switchToQuestionScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            "Hey there!",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: switchToQuestionScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white),
            ),
            label: const Text("Start Quiz"),
            icon: const Icon(Icons.quiz),
          ),
        ],
      ),
    );
  }
}
