import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'startScreen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(changeScreen);
  //   super.initState();
  // }

  void changeScreen() {
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = 'questionScreen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.cyan, Colors.blueAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          // child: activeScreen,
          child: activeScreen == 'startScreen'
              ? StartScreen(changeScreen)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
