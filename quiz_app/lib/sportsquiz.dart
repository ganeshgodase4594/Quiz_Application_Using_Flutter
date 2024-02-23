
import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class SportQuizApp extends StatefulWidget {
  const SportQuizApp({super.key});
  @override
  State createState() => _SportQuizAppState();
}

class _SportQuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Durand Cup is associated with?",
      "options": ["Swimming", "Football", "Hocky", "Table Tennis"],
      "answerIndex": 1,
    },
    {
      "question":
          "The “Marquess of Queensberry rules” is a code of generally accepted rules in which of the following sports?",
      "options": ["Chess", "Boxing", "Hocky", "Tennis"],
      "answerIndex": 1,
    },
    {
      "question": "When was the first World Cup Football held?",
      "options": ["1958", "1917", "1910", "1930"],
      "answerIndex": 3,
    },
    {
      "question":
          "Which nation has bagged maximum number of Thomas Cup titles?",
      "options": ["Japan", "Indonesia", "China", "Denmark"],
      "answerIndex": 1,
    },
    {
      "question":
          "What is the weight of lenticular disc used in the Discus Throw for women",
      "options": ["1kg", "2kg", "3kg", "4kg"],
      "answerIndex": 0,
    },
  ];
  bool questionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswers = 0;
  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionIndex]["answerIndex"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }
    if (selectedAnswerIndex == allQuestions[questionIndex]["answerIndex"]) {
      noOfCorrectAnswers += 1;
    }
    if (selectedAnswerIndex != -1) {
      if (questionIndex == allQuestions.length - 1) {
        setState(() {
          questionScreen = false;
        });
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex += 1;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 11, 92, 190),
            Color.fromARGB(255, 219, 222, 226),
            Color.fromARGB(75, 87, 100, 163),
          ], begin: Alignment.topRight, end: AlignmentDirectional.bottomStart)),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  child: Center(
                    child: Text(
                      allQuestions[questionIndex]["question"],
                      style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(300, 60)),
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 0;
                    });
                  }
                },
                child: Text(
                  "A.${allQuestions[questionIndex]["options"][0]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(300, 60)),
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                child: Text(
                  "B.${allQuestions[questionIndex]["options"][1]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(300, 60)),
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                child: Text(
                  "C.${allQuestions[questionIndex]["options"][2]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(300, 60)),
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                child: Text(
                  "D.${allQuestions[questionIndex]["options"][3]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            "QuizApp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 187, 213, 17),
            Colors.blue,
            Color.fromARGB(255, 219, 219, 66),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/trophy.png",
                  height: 400,
                  width: 280,
                ),
                const Text(
                  "Congratulations!!!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "You have completed the Quiz",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  "$noOfCorrectAnswers/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(300, 60)),
                  ),
                  onPressed: () {
                    questionIndex = 0;
                    questionScreen = true;
                    noOfCorrectAnswers = 0;
                    selectedAnswerIndex = -1;
                    setState(() {});
                  },
                  child: const Text(
                    "Start Again",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const homescreen()),
                    );
                  },
                  child: const Text("Go To Home Page",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
