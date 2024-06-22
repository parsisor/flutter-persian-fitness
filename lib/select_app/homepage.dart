import 'package:Zerang/brain_app/class.dart';
import 'package:Zerang/fitness_hub/fitness_hub.dart';
import 'package:flutter/material.dart';
import 'package:Zerang/Theme/consts.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isHovered1 = false;
  bool isHovered2 = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
                          MaterialPageRoute(builder: (context) => BrainTrainingApp()));
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: isHovered1 ? selectedButtonColor : buttonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: FractionallySizedBox(
                                widthFactor: 0.9,
                                heightFactor: 0.9,
                                child: Image.asset(
                                  "assets/vectors/healthy_mind_icon.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "عقل سالم",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "در",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 5),
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
                        color: isHovered2 ? selectedButtonColor : buttonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "بدن سالم",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 10),
                            Flexible(
                              child: FractionallySizedBox(
                                widthFactor: 0.9,
                                heightFactor: 0.9,
                                child: Image.asset(
                                  "assets/vectors/healthy_boddy_icon.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
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
      ),
    );
  }
}
