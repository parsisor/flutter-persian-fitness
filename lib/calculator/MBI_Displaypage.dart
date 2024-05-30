import 'package:flutter/material.dart';

class BMIDisplayPage extends StatelessWidget {
  final double bmi;

  BMIDisplayPage({required this.bmi});

  @override
  Widget build(BuildContext context) {
    String imagePath;
    String description;

    if (bmi < 18.5) {
      imagePath = 'assets/vectors/MBI/body_type_1.png';
      description = 'لاغر هستی بهتر است رژیم غذایی بهتری انتخاب کنید';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      imagePath = 'assets/vectors/MBI/body_type_1.png';
      description = 'بدن شما روی فرم است';
    } else {
      imagePath = 'assets/vectors/MBI/body_type_1.png';
      description = 'اضافه وزن دارید بهتر است ورزش را شروع کنید';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('نتیجه محاسبه BMI'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(height: 16.0),
            Text(
              'شاخص توده بدنی شما: ${bmi.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              description,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
