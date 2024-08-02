import 'package:flutter/material.dart';

class BMIDisplayPage extends StatelessWidget {
  final double bmi;

  const BMIDisplayPage({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    String imagePath;
    String description;

    if (bmi < 18.5) {
      imagePath = 'assets/vectors/MBI/skinny.png';
      description = 'لاغر هستی بهتر است رژیم غذایی بهتری انتخاب کنید';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      imagePath = 'assets/vectors/MBI/medium.png';
      description = 'بدن شما روی فرم است';
    } else {
      imagePath = 'assets/vectors/MBI/fat.png';
      description = 'اضافه وزن دارید بهتر است ورزش را شروع کنید';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('نتیجه محاسبه BMI'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                            child: FractionallySizedBox(
                                widthFactor: 0.9,
                                heightFactor: 0.9,
                                child: Image.asset(
                                  imagePath,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
            const SizedBox(height: 16.0),
            Text(
              'شاخص توده بدنی شما: ${bmi.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Text(
              description,
              style: const TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
