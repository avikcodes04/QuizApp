import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(146, 233, 219, 242),
            ),
            SizedBox(height: 80,),
          Text(
            'Learn Flutter the fun way!',
            textAlign: TextAlign.center,
            style: GoogleFonts.climateCrisis(
              color: const Color.fromARGB(255, 235, 230, 239),
              fontSize: 24
            ),          
          ),
          SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 201, 149, 210),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: Text("Start Quiz"))
        ],
      ),
    );
  }
}