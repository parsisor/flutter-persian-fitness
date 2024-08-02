// ignore_for_file: file_names
import 'package:zerang/fitness_hub/otherPages/Brain/IQ_TEST/widget/main_background_screen.dart';
import 'package:flutter/material.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen(this.time, this.score, this.name, {super.key});

  final String name;
  final int score;
  final int time;

  String _res() {
    String ret = 'تبریک $name! شما بسیار باهوش و عالی هستید';
    if (time == 100) {
      ret = 'زمان تمام شده است. لطفا دوباره تلاش کنید و سریعتر باشید';
    } else if (score == 0) {
      ret = 'متاسفم $name، شما بسیار ضعیف هستید!';
    } else if (score <= 5) {
      ret = 'متاسفم $name، شما کمی ضعیف هستید!';
    } else if (score <= 10) {
      ret = '$name، شما نسبتا خوب هستید';
    } else if (score <= 15) {
      ret = 'تبریک $name! شما خوب هستید';
    } else if (score < 20) {
      ret = 'تبریک $name! شما بسیار خوب و باهوش هستید';
    }
    return ret;
  }

  Widget buildContainer(String text) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.green, offset: Offset(5, 5), blurRadius: 10)
            ],
            border: Border.all(
              width: 1,
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white),
        child: Text(
          text,
          textAlign: TextAlign.right,
          style: const TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SingleChildScrollView(
        child: BackGroundScrren(
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: buildContainer('از مشارکت شما متشکریم $name'),
                ),
                buildContainer(
                    'امتیاز شما $score از 20 است و شما $time ثانیه از 100 ثانیه را استفاده کرده‌اید'),
                buildContainer(_res()),
                TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.home),
                  label: const Text(
                    'دوباره تلاش کنید',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
