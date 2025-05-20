import 'package:counter_app/core/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
String value;
String message;
    if (result < 18.5) {
      value = 'Underweight';
      message = 'You are underweight, consider a balanced diet.';
    } else if (result >= 18.5 && result < 25) {
       value= 'Normal Weight';
       message = 'Your body weight is absolutely normal, Good job! 💪';
    } else if (result >= 25 && result < 30) {
      value = 'Overweight';
      message = 'You are overweight, consider more activity.';
    } else if (result >= 30 && result < 35) {
     value = 'Obese class I';
     message = 'Obese class I, health risk increases.';
    } else if (result >= 35 && result < 40) {
      value= 'Obese class II';
        message = 'Obese class II, seek professional advice.';
    } else {
       value = 'Obese class III';
       message = 'Obese class III, serious health risk.';
    }

   return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          'Your Result',
          style: TextStyle(color: AppColors.white, fontSize: 18),
        ),
      ),
           body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Text(
                    value,
                    style: const TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    result.toStringAsFixed(2),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
           // const SizedBox(height: 250,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.pop(context); // ترجع للشاشة السابقة
              },
              child: const Text(
                'Recalculate',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

