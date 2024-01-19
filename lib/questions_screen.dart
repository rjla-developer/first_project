import "package:flutter/material.dart";
import "package:first_project/answer_button.dart";
import "package:first_project/data/questions.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Color.fromARGB(255, 62, 78, 173),
            ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map(
            (answer) => AnswerButton(
              answerText: answer,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
