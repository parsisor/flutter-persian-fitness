import 'package:Zerang/Theme/consts.dart';
import 'package:Zerang/workouts/workoutsplus/workout_class.dart';
import 'package:Zerang/workouts/workoutsplus/workout_storage.dart';
import 'package:flutter/material.dart';

class WorkoutDetailPage extends StatelessWidget {
  final WorkoutBase workout;

  WorkoutDetailPage({required this.workout});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(workout.name),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  workout.wGif,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    workout.name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: isDarkMode ? Colors.grey[800] : Colors.blueAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DataTable(
                    columnSpacing: 20,
                    columns: [
                      DataColumn(
                        label: Text(
                          'مشخصه',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'مقدار',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('سطح حرکت')),
                          DataCell(Text(workout.wlevel)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('عضلات درگیر')),
                          DataCell(
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: workout.targetMuscle.map((target) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(target.muscle),
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('نوع تمرین')),
                          DataCell(Text(workout.wType)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text('وسایل مورد نیاز')),
                          DataCell(Text(workout.wneeds)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'مراحل:',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                ...workout.steps.map((step) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                          '${step.description} (مدت زمان: ${step.duration} ثانیه)'),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
