
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomLeft,
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 16, 24, 28),
                  Color.fromARGB(255, 113, 142, 165),
                  Color.fromARGB(255, 212, 112, 69),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20.0),

              // height: double.infinity,
              // width: double.infinity,
              child: Center(
                child: Container(
                  //  height: double.infinity,
                  //  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                      "Welcome to Intelliquize - Where Knowledge Meets Challenge! At Intelliquize, we've crafted an experience that seamlessly merges the thrill of quizzes with the pursuit of knowledge. Our commitment is to provide you with an engaging platform that stimulates your intellect while offering a fun and rewarding experience",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}