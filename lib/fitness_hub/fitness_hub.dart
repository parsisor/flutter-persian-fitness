import 'package:Zerang/articles/view_page.dart';
import 'package:Zerang/calculator/calculator.dart';
import 'package:Zerang/code_assets.dart/consts.dart';
import 'package:Zerang/fitness_hub/streak_bar/streak_bar.dart';
import 'package:Zerang/fitness_hub/streak_bar/week_day.dart';
import 'package:Zerang/settings_Page/settings.dart';
import 'package:Zerang/sign_in/sign_in_page.dart';
import 'package:Zerang/workouts/workouts.dart';
import 'package:flutter/material.dart';

class Fitness_Hub extends StatefulWidget {
  const Fitness_Hub({super.key});

  @override
  State<Fitness_Hub> createState() => _Fitness_HubState();
}

class _Fitness_HubState extends State<Fitness_Hub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'صفحه اصلی',
          
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                icon: Icon(Icons.login),
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ));
                },
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Streak_Bar(getCurrentWeekDay(6), "Yes"),
                  Streak_Bar(getCurrentWeekDay(7), "No"),
                  Streak_Bar(getCurrentWeekDay(0), "Today"),
                  Streak_Bar(getCurrentWeekDay(1), "future"),
                  Streak_Bar(getCurrentWeekDay(2), "future"),
                ],
              ),
              SizedBox(height: 10.0),
              Divider(thickness: 0.4),
              Container(
                decoration: BoxDecoration(
                  color: sanavie,
                  borderRadius: BorderRadius.circular(21.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/vectors/Dumbbell.png"),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                        ),
                        Positioned(
                            top: 20,
                            right: 20,
                            child: Image.asset("assets/vectors/calorie.png")),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Text(
                            calories,
                            style: TextStyle(
                              color: white,
                              fontSize: 70,
                              
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 40,
                          child: Text(
                            "کالری",
                            style: TextStyle(
                              color: sefid,
                              fontSize: 18,
                              
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Divider(thickness: 0.4),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ArticlePage()),
                      );
                    },
                    child: Container(
                      width: 175,
                      height: 175,
                      decoration: BoxDecoration(
                        color: button_color,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'مقاله ها',
                          style: TextStyle(
                              
                              fontSize: 25,
                              color: sefid),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BMIHomePage()),
                      );
                    },
                    child: Container(
                      width: 175,
                      height: 175,
                      decoration: BoxDecoration(
                        color: button_color,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'ماشین حساب',
                          style: TextStyle(
                              
                              fontSize: 25,
                              color: sefid),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Workouts(context, "سینه و شکم", "assets/photos/sine.png", "sine",
                  container_color1),
              SizedBox(
                height: 10,
              ),
              Workouts(context, "بازو و ساعد", "assets/photos/bazo.png", "bazo",
                  container_color2),
              SizedBox(
                height: 10,
              ),
              Workouts(context, "ران و ساق", "assets/photos/pa.png", "pa",
                  container_color3),
              SizedBox(
                height: 10,
              ),
              Workouts(context, "  کل بدن", "assets/photos/badan.png", "badan",
                  container_color4),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget Workouts(
    BuildContext context, String part, String img, String id, Color color) {
  final double darknessFraction = 0.8;

  Color darkerColor = Color.fromRGBO(
    (color.red * darknessFraction).toInt(),
    (color.green * darknessFraction).toInt(),
    (color.blue * darknessFraction).toInt(),
    1.0,
  );

  return Container(
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(21),
      gradient: LinearGradient(
        colors: [
          darkerColor,
          color,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.3, 1.0],
      ),
    ),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WorkoutDetailPage(id),
        ));
      },
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 40),
          Text(
            part,
            style: TextStyle(
              color: sefid,
              fontSize: 32,
              
            ),
          ),
          SizedBox(width: 10)
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    ),
  );
}
