import 'package:flutter/material.dart';
import '../code_assets.dart/consts.dart';
import 'workout_data.dart';
import 'tozihat.dart';


class WorkoutDetailPage extends StatelessWidget {
  final String workoutId;

  WorkoutDetailPage(this.workoutId);

  Widget showmyworkout(int s, String imagePath, BuildContext context,
      {required int exerciseCode}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                Tozihat(workoutId, exerciseCode, imagePath, s),
          ));
        },
        child: Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: gray,
          ),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                width: 80,
                height: 80,
              ),
              SizedBox(width: 40),
              Expanded(
                child: Text(
                  getWorkoutsById(workoutId)[s],
                  style: TextStyle(
                    color: sefid,
                    fontSize: 32,
                    
                  ),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String workoutTitle = getWorkoutTitleById(workoutId);
    String workoutDescription = getWorkoutDescriptionById(workoutId);

    List<Widget> workoutWidgets = [];
    List workoutList = getWorkoutsById(workoutId);
    List workoutImages = getWorkoutImagesById(workoutId);

    List<dynamic> exerciseCodes = getWorkoutCode(workoutId);

    for (int i = 0; i < workoutList.length; i++) {
      workoutWidgets.add(
        showmyworkout(
          i,
          workoutImages[i],
          context,
          exerciseCode: exerciseCodes[i],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ورزش ها'),
        centerTitle: true,

      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                workoutTitle,
                style: TextStyle(
                    fontSize: 20,
),
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              Text(
                workoutDescription,
                style: TextStyle(
                    fontSize: 16,
                    
                  ),
              ),
              SizedBox(height: 10),
              Column(
                children: workoutWidgets,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String getWorkoutTitleById(String id) {
  switch (id) {
    case 'sine':
      return 'سینه و شکم';
    case 'bazo':
      return 'بازو و ساعد';
    case 'pa':
      return 'ران و ساق';
    case 'badan':
      return 'کل بدن';
    default:
      return 'ورزش ناشناخته';
  }
}

String getWorkoutDescriptionById(String id) {
  switch (id) {
    case 'sine':
      return 'تمریناتی برای بهبود سینه و شکم.';
    case 'bazo':
      return 'تمریناتی برای تقویت بازوها و ساعد.';
    case 'pa':
      return 'تمریناتی برای بهبود ران و ساق.';
    case 'badan':
      return 'تمریناتی کلی برای بهبود ورزش کل بدن.';
    default:
      return 'توضیحاتی برای ورزش ناشناخته.';
  }
}

List getWorkoutsById(String id) {
  switch (id) {
    case 'sine':
      return exercise_list_sine;
    case 'bazo':
      return exercise_list_bazo;
    case 'pa':
      return exercise_list_pa;
    case 'badan':
      return exercise_list_all;
    default:
      return exercise_list_all;
  }
}

List getWorkoutImagesById(String id) {
  switch (id) {
    case 'sine':
      return exercise_img_sine;
    case 'bazo':
      return exercise_img_bazo;
    case 'pa':
      return exercise_img_pa;
    case 'badan':
      return exercise_img_all;
    default:
      return exercise_img_all;
  }
}

List getWorkoutCode(String id) {
  switch (id) {
    case 'sine':
      return exercise_code_sine;
    case 'bazo':
      return exercise_code_bazo;
    case 'pa':
      return exercise_code_pa;
    case 'badan':
      return exercise_code_all;
    default:
      return exercise_code_all;
  }
}
