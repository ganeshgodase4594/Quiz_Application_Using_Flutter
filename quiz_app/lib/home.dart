
import 'package:flutter/material.dart';
import 'package:quiz_app/QuizAppsection.dart';
import 'package:quiz_app/about.dart';

// ignore: camel_case_types
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State createState() => _homescreenState();
}

// ignore: camel_case_types
class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Colors.blue,
              Color.fromARGB(255, 10, 17, 39),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
                child:
                    Image.asset('assets/images/images-removebg-preview.png')),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'IntelliQuiz',
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w800,
                  color: Colors.green,
                  fontSize: 50),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Let's Play!",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Play now and Test yourself',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const QuizAppSection())));
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  fixedSize: MaterialStatePropertyAll(Size(350, 60)),
                ),
                child: const Text(
                  'Play Now',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  fixedSize: MaterialStatePropertyAll(Size(350, 60))),
              child: const Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}