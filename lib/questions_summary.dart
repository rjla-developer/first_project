import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map<Widget>((data) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: data['user_answer'] == data['correct_answer']
                      ? const Color.fromARGB(255, 57, 128, 156)
                      : const Color.fromARGB(255, 180, 27, 78),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 0, 25),
                width: 250,
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 24, 99, 35)),
                      ),
                      Text(
                        data['correct_answer'] as String,
                        style: GoogleFonts.neucha(
                            color: data['user_answer'] == data['correct_answer']
                                ? const Color.fromARGB(255, 57, 128, 156)
                                : const Color.fromARGB(255, 180, 27, 78),
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
