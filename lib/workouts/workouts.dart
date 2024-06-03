import 'package:Zerang/code_assets.dart/assets.dart';
import 'package:flutter/material.dart';
import '../code_assets.dart/consts.dart';

import 'tozihat.dart';

class WorkoutDetailPage extends StatelessWidget {
  final String workoutId;

  WorkoutDetailPage(this.workoutId);

  Widget _buildWorkoutCard(BuildContext context, int index) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth * 0.9; 
    double cardHeight = 160; 

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Tozihat(
              workoutId,
              getWorkoutCode(workoutId)[index],
              getWorkoutImagesById(workoutId)[index],
              index,
            ),
          ));
        },
        child: Container(
          width: cardWidth,
          height: cardHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: gray,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  getWorkoutImagesById(workoutId)[index],
                  width: cardHeight * 0.7,
                  height: cardHeight * 0.7,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  getWorkoutsById(workoutId)[index],
                  style: TextStyle(
                    color: sefid,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String workoutTitle = getWorkoutTitleById(workoutId);
    String workoutDescription = getWorkoutDescriptionById(workoutId);

    return Scaffold(
      appBar: AppBar(
        title: Text('ورزش ها'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                workoutTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Text(
                workoutDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: getWorkoutsById(workoutId).length,
                itemBuilder: (context, index) {
                  return _buildWorkoutCard(context, index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
