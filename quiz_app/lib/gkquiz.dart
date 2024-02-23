import 'package:flutter/material.dart';
import 'package:quiz_app/home.dart';

class GKQuizApp extends StatefulWidget {
  const GKQuizApp({super.key});
  @override
  State createState() => _GKQuizAppState();
}

class _GKQuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "Name the National river of India?",
      "options": ["yamuna", "ganga", "savitri", "amazon"],
      "answerIndex": 1,
    },
    {
      "question": " Which colour symbolises peace?",
      "options": ["yellow", "black", "white", "red"],
      "answerIndex": 2,
    },
    {
      "question": "Name the largest planet of our Solar System?",
      "options": ["mars", "neptune", "jupiter", "earth"],
      "answerIndex": 2,
    },
    {
      "question":
          "Who is the first citizen of India?",
      "options": ["PM", "Chief Justice", "President", "Home Minister"],
      "answerIndex": 2,
    },
    {
      "question":
          "How many states are there in India?",
      "options": ["27", "29kg", "34kg", "28kg"],
      "answerIndex": 3,
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
          actions: [Container(
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
          )],
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
            Color.fromARGB(255, 17, 175, 219),
            Color.fromARGB(255, 124, 168, 221),
            Color.fromARGB(255, 57, 93, 226),
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
              colors: [
            Color.fromARGB(255, 2, 34, 21),
            Color.fromARGB(255, 169, 192, 210),
            Color.fromARGB(255, 15, 135, 183),
              ],
            ),
          ),
        ),
      ),
        body: Container(
          decoration:  const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 11, 92, 190),
            Color.fromARGB(255, 219, 222, 226),
            Color.fromARGB(75, 87, 100, 163),
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
