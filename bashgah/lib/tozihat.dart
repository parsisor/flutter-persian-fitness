import 'package:flutter/material.dart';
import 'consts.dart';
import 'assets.dart';
import 'workout_data.dart';

class Tozihat extends StatelessWidget {
  final String workoutId;
  final String imagepath;
  final int exerciseCode;
  final int s;

  Tozihat(this.workoutId, this.exerciseCode, this.imagepath, this.s);

  String getExerciseDescription() {
 
    return exerciseDescriptions[exerciseCode] ?? "توضیحاتی موجود نیست.";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: avalie,
      appBar: AppBar(
        title: Text("توضیحات"),
        centerTitle: true,
        backgroundColor: sanavie,
      ),
      body: Center(
        
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Text(
                        getWorkoutsById(workoutId)[s],
                        style: TextStyle(fontSize: 30  , color: sefid),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(height: 20),
                      Image.asset(
                        imagepath,
                        width: 400,
                        height: 200,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          getExerciseDescription(),
                          style: TextStyle(fontSize: 22 , color: sefid),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
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
