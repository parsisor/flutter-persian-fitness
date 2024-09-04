import 'package:flutter/material.dart';
import 'package:zerang/theme/consts.dart';
import 'package:zerang/fitness_hub/otherPages/Workout/Data/workout_storage.dart';


class WorkoutDetailPage extends StatelessWidget {
  final WorkoutBase workout;

  const WorkoutDetailPage({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(workout.name),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Image.network(
              workout.wGif,
              width: double.infinity,
              height: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                workout.name,
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey[800] :  Colors.grey[300]!,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Wrap(
                alignment: WrapAlignment.center,
                children: [
                  DataTable(
                    columnSpacing: 20,
                    columns: const [
                      DataColumn(
                        label: Text(
                          'مشخصه',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: buttonColor),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'مقدار',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: selectedButtonColor),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          const DataCell(Text('سطح حرکت')),
                          DataCell(Text(workout.wlevel)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('عضلات درگیر')),
                          DataCell(
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
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
                          const DataCell(Text('نوع تمرین')),
                          DataCell(Text(workout.wType)),
                        ],
                      ),
                      DataRow(
                        cells: [
                          const DataCell(Text('وسایل مورد نیاز')),
                          DataCell(Text(workout.wneeds)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'مراحل:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            ...workout.steps.map((step) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                '${step.description} (مدت زمان: ${step.duration} ثانیه)',
                textAlign: TextAlign.justify, // به خط بعدی برود
              ),
            )),
          ],
        ),
      ),
    );
  }
}
