import 'package:flutter/material.dart';
class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin:const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered 10 correctly"),
            SizedBox(height: 30,),
            Text("data"),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){},
              child: Text("Restart Quiz"),
              )
          ],
        ),
      ),
    );
  }
}