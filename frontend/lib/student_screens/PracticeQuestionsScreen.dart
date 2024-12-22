import 'package:flutter/material.dart';



class PracticeQuestionsScreen extends StatelessWidget {
  final List<String> subjects = ['Math', 'Physics', 'Biology'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Questions Screen')),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subjects[index]),
            onTap: () {
              if (subjects[index] == 'Math') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChapterScreen()),
                );
              }
              // You can add other subjects here later
            },
          );
        },
      ),
    );
  }
}

class ChapterScreen extends StatelessWidget {
  final List<String> chapters = ['Chapter 1.2', 'Chapter 1.3', 'Chapter 1.4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Math Chapters')),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(chapters[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuestionScreen(chapter: chapters[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class QuestionScreen extends StatelessWidget {
  final String chapter;
  final Map<String, List<Map<String, dynamic>>> questionsData = {
    'Chapter 1.2': [
      {
        'question': 'Q1 Determine the number of positive integers that are factors of the number 33 x 74 x 112.',
        'options': ['20', '30', '60', '120'],
      },
      {
        'question': 'Q2 In how many ways can one copy and one book be chosen from sets of 4 copies and 6 books?',
        'options': ['10 ways', '34 ways', '24 ways', '96 ways'],
      },
      // Add more questions
    ],
    'Chapter 1.3': [
      {
        'question': 'Q1 In how many ways can the numbers on a clock face be arranged?',
        'options': ['12!', '11!', '12', '11'],
      },
      // Add more questions for Chapter 1.3
    ],
  };

  QuestionScreen({required this.chapter});

  @override
  Widget build(BuildContext context) {
    final questions = questionsData[chapter] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text(chapter)),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    questions[index]['question'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: (questions[index]['options'] as List<String>).map((option) {
                      return ListTile(
                        title: Text(option),
                        leading: Radio(
                          value: option,
                          groupValue: null, // You can handle the selected answer logic
                          onChanged: (value) {},
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
