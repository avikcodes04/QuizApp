import 'package:flutter/material.dart';

import 'package:quiz/summary_item.dart';


class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData,{super.key});
  final List<Map<String,Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 380,

      child: SingleChildScrollView(
        child: Column(
          
          children: summaryData.map(
            (data){
              return SummaryItem(data);

          }).toList(),
            
        ),
      ),
    );
  }
}