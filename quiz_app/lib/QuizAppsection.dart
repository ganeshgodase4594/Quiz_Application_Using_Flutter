// ignore: file_names
import 'package:flutter/material.dart';
import 'package:quiz_app/gkquiz.dart';
import 'package:quiz_app/sciencequiz.dart';
import 'package:quiz_app/sportsquiz.dart';

class QuizAppSection extends StatefulWidget {
  const QuizAppSection({Key? key}) : super(key: key);

  @override
  State createState() => _QuizAppSectionState();
}

class _QuizAppSectionState extends State<QuizAppSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black45, Colors.white, Colors.green],
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'QuizSection',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(115, 14, 83, 173), Colors.white, Color.fromARGB(255, 66, 159, 202)],
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(115, 14, 83, 173),
              Colors.white,
              Color.fromARGB(255, 66, 159, 202),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10,),
            Center(
              child: SizedBox(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const SportQuizApp()),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/sports2.png'),
                            const SizedBox(height: 10),
                            const Text(
                              'Sports Quiz',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

           const SizedBox(height: 20,),
             Center(
              child: SizedBox(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const ScienceQuizApp()),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/science3.png'),
                            const SizedBox(height: 10),
                            const Text(
                              'Science Quiz',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
             Center(
              child: SizedBox(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const GKQuizApp()),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/gk1.png'),
                            const SizedBox(height: 10),
                            const Text(
                              'GK Quiz',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
