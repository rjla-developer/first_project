import "package:flutter/material.dart";
import "package:first_project/answer_button.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'The question...',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'Respuesta 1',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Respuesta 2',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Respuesta 3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
