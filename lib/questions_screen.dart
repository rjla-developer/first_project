import "package:flutter/material.dart";

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
          const Text('The question...'),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Respuesta 1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Respuesta 2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Respuesta 3'),
          ),
        ],
      ),
    );
  }
}
