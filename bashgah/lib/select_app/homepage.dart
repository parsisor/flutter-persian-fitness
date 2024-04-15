
import 'package:fitness/brain_app/class.dart';
import 'package:fitness/fitness_hub/fitness_hub.dart';
import 'package:flutter/material.dart';
import 'package:fitness/code_assets.dart/consts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isHovered1 = false;
  bool isHovered2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered1 = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered1 = false;
                  });
                },
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Brain_app()));
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: isHovered1 ? selectedbutton_color : button_color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/vectors/healthy_mind_icon.png",
                            width: 280,
                            height: 250,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "عقل سالم",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Iransans",
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              child: Text(
                "در",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Iransans",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered2 = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered2 = false;
                  });
                },
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fitness_Hub()));
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: isHovered2 ? selectedbutton_color : button_color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Text(
                            "بدن سالم",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Iransans",
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Image.asset(
                            "assets/vectors/healthy_boddy_icon.png",
                            width: 280,
                            height: 250,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
