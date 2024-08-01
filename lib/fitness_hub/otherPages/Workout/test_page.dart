import 'package:flutter/material.dart';

class FitnessQuizScreen extends StatefulWidget {
  const FitnessQuizScreen({super.key});

  @override
  _FitnessQuizScreenState createState() => _FitnessQuizScreenState();
}

class _FitnessQuizScreenState extends State<FitnessQuizScreen> {
  final Map<String, int> _answers = {};

  final List<Map<String, Object>> _questions = [
    {
      'question': 'چقدر هر روز ورزش می‌کنید؟',
      'answers': [
        {'option': 'هر روز', 'value': 5},
        {'option': '3-4 بار در هفته', 'value': 4},
        {'option': '1-2 بار در هفته', 'value': 3},
        {'option': 'به ندرت', 'value': 2},
        {'option': 'هرگز', 'value': 1},
      ],
    },
    {
      'question': 'کدام نوع ورزش را ترجیح می‌دهید؟',
      'answers': [
        {'option': 'کاردیو (دویدن، دوچرخه سواری)', 'value': 5},
        {'option': 'رزمی', 'value': 3},
        {'option': 'یوگا یا پیلاتس', 'value': 2},
        {'option': 'ورزش‌های تیمی', 'value': 4},
        {'option': 'از ورزش متنفرم', 'value': 1},
      ],
    },
    {
      'question': 'چگونه سطح ورزشی خود را ارزیابی می‌کنید؟',
      'answers': [
        {'option': 'بسیار فیت', 'value': 5},
        {'option': 'نسبتاً فیت', 'value': 4},
        {'option': 'متوسط', 'value': 3},
        {'option': 'زیر متوسط', 'value': 2},
        {'option': 'اصلاً فیت نیستم', 'value': 1},
      ],
    },
    {
      'question': 'آیا قبل از ورزش کشش می‌دهید؟',
      'answers': [
        {'option': 'همیشه', 'value': 5},
        {'option': 'اغلب', 'value': 4},
        {'option': 'گاهی', 'value': 3},
        {'option': 'به ندرت', 'value': 2},
        {'option': 'هرگز', 'value': 1},
      ],
    },
    {
      'question': 'چقدر آب روزانه می‌نوشید؟',
      'answers': [
        {'option': 'بیشتر از 3 لیتر', 'value': 5},
        {'option': '2-3 لیتر', 'value': 4},
        {'option': '1-2 لیتر', 'value': 3},
        {'option': 'کمتر از 1 لیتر', 'value': 2},
        {'option': 'غافل از نوشیدن آب هستم', 'value': 1},
      ],
    },
    {
      'question': 'بعد از ورزش چطور بهبود پیدا می‌کنید؟',
      'answers': [
        {'option': 'کشش و سرد کردن', 'value': 5},
        {'option': 'شیک پروتئینی', 'value': 4},
        {'option': 'استراحت و آبیاری', 'value': 3},
        {'option': 'حمام گرم یا سونا', 'value': 2},
        {'option': 'من روتین بازیابی ندارم', 'value': 1},
      ],
    },
    {
      'question': 'هدف ورزشی شما چیست؟',
      'answers': [
        {'option': 'کاهش وزن', 'value': 1},
        {'option': 'افزایش عضله', 'value': 4},
        {'option': 'بهبود انعطاف پذیری', 'value': 2},
        {'option': 'بهبود استقامت', 'value': 5},
        {'option': 'حفظ سلامتی', 'value': 3},
      ],
    },
    {
      'question': 'آیا نرخ قلب خود را در حین ورزش نظارت می‌کنید؟',
      'answers': [
        {'option': 'همیشه', 'value': 5},
        {'option': 'گاهی اوقات', 'value': 4},
        {'option': 'به ندرت', 'value': 3},
        {'option': 'هرگز', 'value': 2},
        {'option': 'من ورزش نمی‌کنم', 'value': 1},
      ],
    },
    {
      'question': 'زمان ترجیحی شما برای ورزش چیست؟',
      'answers': [
        {'option': 'صبح', 'value': 5},
        {'option': 'بعد از ظهر', 'value': 3},
        {'option': 'شب', 'value': 4},
        {'option': 'هر زمانی', 'value': 2},
        {'option': 'من ورزش نمی‌کنم', 'value': 1},
      ],
    },
    {
      'question': 'هر جلسه ورزشی چه مدت طول می‌کشد؟',
      'answers': [
        {'option': 'کمتر از 30 دقیقه', 'value': 2},
        {'option': '30-60 دقیقه', 'value': 4},
        {'option': 'بیشتر از 60 دقیقه', 'value': 5},
        {'option': 'متفاوت است', 'value': 3},
        {'option': 'من ورزش نمی‌کنم', 'value': 1},
      ],
    },
  ];

  int _calculateFitnessLevel() {
    int totalScore = 0;
    for (var answer in _answers.values) {
      totalScore += answer;
    }
    double averageScore = totalScore / _answers.length;
    if (averageScore >= 4.5) {
      return 5;
    } else if (averageScore >= 3.5) {
      return 4;
    } else if (averageScore >= 2.5) {
      return 3;
    } else if (averageScore >= 1.5) {
      return 2;
    } else {
      return 1;
    }
  }

  String _getFitnessLevelDescription(int fitnessLevel) {
    switch (fitnessLevel) {
      case 5:
        return 'بسیار رو فرم و ورزشکار';
      case 4:
        return 'نسبتاً رو فرم';
      case 3:
        return 'متوسط';
      case 2:
        return 'زیر متوسط';
      case 1:
        return 'اصلاً ورزشکار نیستید';
      default:
        return 'نامشخص';
    }
  }

  void _showFitnessLevelDialog() {
    int fitnessLevel = _calculateFitnessLevel();
    String fitnessLevelDescription = _getFitnessLevelDescription(fitnessLevel);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('سطح ورزشی شما'),
          content: Text(
            'براساس پاسخ‌های شما، سطح ورزشی شما: $fitnessLevelDescription است.',
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.right,
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('باشه', style: TextStyle(fontSize: 16)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تست سطح ورزشی'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _questions.length,
        itemBuilder: (context, index) {
          final question = _questions[index];
          final questionText = question['question'] as String;
          final answers = question['answers'] as List<Map<String, Object>>;

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'سوال ${index + 1}: $questionText',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: answers.map((answer) {
                      final option = answer['option'] as String;
                      return RadioListTile<int>(
                        title: Text(option, textDirection: TextDirection.rtl, style: const TextStyle(fontSize: 16)),
                        value: answer['value'] as int,
                        groupValue: _answers['Q$index'] ?? -1,
                        activeColor: Theme.of(context).primaryColor,
                        onChanged: (value) {
                          setState(() {
                            _answers['Q$index'] = value!;
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFitnessLevelDialog();
        },
        tooltip: 'نمایش سطح ورزشی',
        child: const Icon(Icons.fitness_center),
      ),
    );
  }
}
