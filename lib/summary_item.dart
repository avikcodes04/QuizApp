import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/question_identifier.dart';
import 'package:quiz/questions_summary.dart';

class SummaryItem extends StatelessWidget {
   SummaryItem(this.itemData,{super.key});

  final Map<String,Object>itemData;


  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer=
    itemData['user_answer']==itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(questionIndex:itemData['question_index'] as int, 
        isCorrectAnswer:isCorrectAnswer ),
        SizedBox(width: 20,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemData['question']as String,
              // textAlign: TextAlign.left,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(itemData['user_answer']as String,
            style: TextStyle(color: const Color.fromARGB(255, 234, 201, 255)),),
            Text(itemData['correct_answer']as String,
            style: TextStyle(color: Colors.blue),),

          ],
        ))
      ],
    );
  }
}