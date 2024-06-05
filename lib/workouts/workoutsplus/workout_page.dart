import 'package:Zerang/workouts/workoutsplus/workout_class.dart';
import 'package:Zerang/workouts/workoutsplus/workout_storage.dart';
import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ورزش‌ها'),
      ),
      body: ListView.builder(
        itemCount: wdataset.length,
        itemBuilder: (context, index) {
          final workout = wdataset[index];
          return ListTile(
            leading: Image.asset(workout.wGif, width: 50, height: 50, fit: BoxFit.cover),
            title: Text(workout.name),
            subtitle: Text(workout.wlevel),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkoutDetailPage(workout: workout),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class WorkoutDetailPage extends StatelessWidget {
  final WorkoutBase workout;

  WorkoutDetailPage({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(workout.wGif),
              SizedBox(height: 16),
              Text(
                workout.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'سطح: ${workout.wlevel}',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'نوع: ${workout.wType}',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'نیازمندی‌ها: ${workout.wneeds}',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                'هدف عضلات: ${workout.targetMuscle.map((m) => m.muscle).join(', ')}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 16),
              Text(
                'مراحل:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              ...workout.steps.map((step) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('${step.description} (مدت زمان: ${step.duration} ثانیه)'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
