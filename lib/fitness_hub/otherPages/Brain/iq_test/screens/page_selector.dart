import 'dart:async';
import 'package:zerang/fitness_hub/hub.dart';
import 'package:zerang/fitness_hub/otherPages/Brain/IQ_TEST/Screens/finish_screen.dart';
import 'package:zerang/fitness_hub/otherPages/Brain/IQ_TEST/widget/ques_ans.dart';
import 'package:flutter/material.dart';


class PageSelector extends StatefulWidget {
  const PageSelector(this.name, {super.key});
  static const routeName = '/pageselector';
  final String name;

  @override
  State<PageSelector> createState() => _PageSelectorState();
}

class _PageSelectorState extends State<PageSelector> {
  int index = 0, totalScore = 0;

  void _answerQuestion(int a) {
    totalScore += a;
    setState(() {
      index++;
    });
  }

  static int maxSeconds = 100;
  int seconds = maxSeconds;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) {
        if (seconds > 0) {
          setState(() {
            seconds--;
          });
        } else {
          timer!.cancel();
        }
      },
    );
  }

  Widget result() {
    setState(() {
      timer!.cancel();
    });
    return FinishScreen(100 - seconds, totalScore, widget.name);
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('سوالات'),
          actions: [
            SizedBox(
              width: 50,
              height: 50,
              child: Stack(fit: StackFit.expand, children: [
                CircularProgressIndicator(
                  value: 1 - seconds / maxSeconds,
                  valueColor: const AlwaysStoppedAnimation(Colors.white),
                  strokeWidth: 5,
                  backgroundColor: Colors.purple,
                ),
                Center(
                  child: Text(
                    '$seconds',
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
              ]),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: index < question.length && seconds > 0
              ? index < 0
                  ?  const HomePage()
                  : Quiz(_answerQuestion, question[index]['qus'] as String,
                      question[index]['ans'] as List<Map<String, Object>>)
              : result(),
        ),
      ),
    );
  }

  final question = [
    {
      'qus': '1 - حاصل 4 * 6 چیست؟',
      'ans': [
        {'ch': 'الف', 'text': 4, 'score': 0},
        {'ch': 'ب', 'text': 24, 'score': 1},
        {'ch': 'پ', 'text': 44, 'score': 0},
        {'ch': 'ت', 'text': 46, 'score': 0},
        {'ch': 'ث', 'text': 66, 'score': 0},
      ]
    },
    {
      'qus': '2 - رنگ آب چیست؟',
      'ans': [
        {'ch': 'الف', 'text': 'سفید', 'score': 0},
        {'ch': 'ب', 'text': 'سبز', 'score': 0},
        {'ch': 'پ', 'text': 'آبی', 'score': 0},
        {'ch': 'ت', 'text': 'قرمز', 'score': 0},
        {'ch': 'ث', 'text': 'بی رنگ', 'score': 1}
      ],
    },
    {
      'qus': '3 - کدام عدد باید بعدی در الگوی 37، 34، 31، 28 بیاید؟',
      'ans': [
        {'ch': 'الف', 'text': 50, 'score': 0},
        {'ch': 'ب', 'text': 22, 'score': 0},
        {'ch': 'پ', 'text': 28, 'score': 0},
        {'ch': 'ت', 'text': 25, 'score': 1},
        {'ch': 'ث', 'text': 50, 'score': 0},
      ],
    },
    {
      'qus': '4 - عدد مرموز بین 60 و 150 است، مضربی از 7 است و مجموع ارقام آن 10 است. عدد مرموز چیست؟',
      'ans': [
        {'ch': 'الف', 'text': 63, 'score': 0},
        {'ch': 'ب', 'text': 84, 'score': 0},
        {'ch': 'پ', 'text': 91, 'score': 1},
        {'ch': 'ت', 'text': 82, 'score': 0},
        {'ch': 'ث', 'text': 55, 'score': 0},
      ],
    },
    {
      'qus': '5 - اولین انسان روی ماه چه کسی بود؟',
      'ans': [
        {'ch': 'الف', 'text': 'لانس آرمسترانگ', 'score': 0},
        {'ch': 'ب', 'text': 'جرج واشنگتن', 'score': 0},
        {'ch': 'پ', 'text': 'مادرم', 'score': 0},
        {'ch': 'ت', 'text': 'نیل آرمسترانگ', 'score': 1},
        {'ch': 'ث', 'text': 'من', 'score': 0},
      ],
    },
    {
      'qus': '6 - بهترین بازیکن فوتبال جهان کیست؟',
      'ans': [
        {'ch': 'الف', 'text': 'نیمار جونیور', 'score': 0},
        {'ch': 'ب', 'text': 'لیونل مسی', 'score': 1},
        {'ch': 'پ', 'text': 'کریستیانو رونالدو', 'score': 0},
        {'ch': 'ت', 'text': 'محمد صلاح', 'score': 0},
        {'ch': 'ث', 'text': 'سرجیو روبرتو', 'score': 0},
      ],
    },
    {
      'qus': '7 - اگر بنوشم می‌میرم، اگر بخورم خوبم. من چه هستم؟',
      'ans': [
        {'ch': 'الف', 'text': 'درخت', 'score': 0},
        {'ch': 'ب', 'text': 'ماشین', 'score': 0},
        {'ch': 'پ', 'text': 'میمون', 'score': 0},
        {'ch': 'ت', 'text': 'آتش', 'score': 1},
        {'ch': 'ث', 'text': 'پیتزا', 'score': 0},
      ],
    },
    {
      'qus': '8 - چه چیزی باعث می‌شود بادکنک شناور شوند؟',
      'ans': [
        {'ch': 'الف', 'text': 'هیدروژن', 'score': 0},
        {'ch': 'ب', 'text': 'باریم', 'score': 0},
        {'ch': 'پ', 'text': 'کلسیم', 'score': 0},
        {'ch': 'ت', 'text': 'اکسیژن', 'score': 0},
        {'ch': 'ث', 'text': 'هلیوم', 'score': 1},
      ],
    },
    {
      'qus': '9 - چه چیزی همیشه در راه است اما هرگز نمی‌رسد؟',
      'ans': [
        {'ch': 'الف', 'text': 'دیروز', 'score': 0},
        {'ch': 'ب', 'text': 'امروز', 'score': 0},
        {'ch': 'پ', 'text': 'فردا', 'score': 1},
        {'ch': 'ت', 'text': 'هفته گذشته', 'score': 0},
        {'ch': 'ث', 'text': 'هر روز', 'score': 0},
      ],
    },
{
  'qus': '10 - چند کتاب 15 سانتی‌متر در 15 سانتی‌متر را می‌توانید در یک ظرف 60 سانتی‌متر در 60 سانتی‌متر قرار دهید تا دیگر خالی نباشد؟',
  'ans': [
    {'ch': 'الف', 'text': 1, 'score': 1},
    {'ch': 'ب', 'text': 2, 'score': 0},
    {'ch': 'پ', 'text': 5, 'score': 0},
    {'ch': 'ت', 'text': 6, 'score': 0},
    {'ch': 'ث', 'text': 0, 'score': 0},
  ],
},

    {
      'qus': '11 - چه چیزی بالا و پایین می‌رود اما همچنان در همان جا باقی می‌ماند؟',
      'ans': [
        {'ch': 'الف', 'text': 'آب', 'score': 0},
        {'ch': 'ب', 'text': 'کسی', 'score': 0},
        {'ch': 'پ', 'text': 'پله', 'score': 1},
        {'ch': 'ت', 'text': 'سگ', 'score': 0},
        {'ch': 'ث', 'text': 'گربه', 'score': 0},
      ],
    },
    {
      'qus': '12 - رنگ زرافه چیست؟',
      'ans': [
        {'ch': 'الف', 'text': 'قرمز', 'score': 0},
        {'ch': 'ب', 'text': 'زرد', 'score': 0},
        {'ch': 'پ', 'text': 'صورتی', 'score': 0},
        {'ch': 'ت', 'text': 'قهوه‌ای', 'score': 1},
        {'ch': 'ث', 'text': 'سیاه', 'score': 0},
      ],
    },
    {
      'qus': '13 - خورشید از کجا طلوع می‌کند؟',
      'ans': [
        {'ch': 'الف', 'text': 'شمال', 'score': 0},
        {'ch': 'ب', 'text': 'جنوب', 'score': 0},
        {'ch': 'پ', 'text': 'شرق', 'score': 1},
        {'ch': 'ت', 'text': 'غرب', 'score': 0},
        {'ch': 'ث', 'text': 'مرکز', 'score': 0},
      ],
    },
    {
      'qus': '14 - چه کسی بهترین بازیکن بسکتبال است؟',
      'ans': [
        {'ch': 'الف', 'text': 'مسی', 'score': 0},
        {'ch': 'ب', 'text': 'مایکل جردن', 'score': 1},
        {'ch': 'پ', 'text': 'کریستیانو رونالدو', 'score': 0},
        {'ch': 'ت', 'text': 'نیمار جونیور', 'score': 0},
        {'ch': 'ث', 'text': 'رابرت لواندوفسکی', 'score': 0},
      ],
    },
    {
      'qus': '15 - چه چیزی خشک می‌شود وقتی خیس است؟',
      'ans': [
        {'ch': 'الف', 'text': 'آب', 'score': 0},
        {'ch': 'ب', 'text': 'حوله', 'score': 1},
        {'ch': 'پ', 'text': 'یخ', 'score': 0},
        {'ch': 'ت', 'text': 'آب گرم', 'score': 0},
        {'ch': 'ث', 'text': 'آب سرد', 'score': 0},
      ],
    },
    {
      'qus': '16 - بزرگترین حیوان زمین کدام است؟',
      'ans': [
        {'ch': 'الف', 'text': 'نهنگ آبی', 'score': 1},
        {'ch': 'ب', 'text': 'فیل', 'score': 0},
        {'ch': 'پ', 'text': 'کرگدن', 'score': 0},
        {'ch': 'ت', 'text': 'زرافه', 'score': 0},
        {'ch': 'ث', 'text': 'اسب آبی', 'score': 0},
      ],
    },
    {
      'qus': '17 - شهر پاریس در کدام کشور است؟',
      'ans': [
        {'ch': 'الف', 'text': 'ایتالیا', 'score': 0},
        {'ch': 'ب', 'text': 'اسپانیا', 'score': 0},
        {'ch': 'پ', 'text': 'آلمان', 'score': 0},
        {'ch': 'ت', 'text': 'فرانسه', 'score': 1},
        {'ch': 'ث', 'text': 'پرتغال', 'score': 0},
      ],
    },
    {
      'qus': '18 - عدد پی تا چند رقم اعشار ادامه دارد؟',
      'ans': [
        {'ch': 'الف', 'text': 'تا بی‌نهایت', 'score': 1},
        {'ch': 'ب', 'text': '2', 'score': 0},
        {'ch': 'پ', 'text': '5', 'score': 0},
        {'ch': 'ت', 'text': '6', 'score': 0},
        {'ch': 'ث', 'text': '100', 'score': 0},
      ],
    },
  ];
}
