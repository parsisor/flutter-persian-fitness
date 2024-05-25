import 'package:Zerang/workouts/workoutsplus/workout_class.dart';
import 'package:Zerang/workouts/workoutsplus/workout_storage.dart';
import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  _WorkoutPageState createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  final WorkoutStorage _storage = WorkoutStorage();
  List<Workout> _workouts = [];

  @override
  void initState() {
    super.initState();
    _loadWorkouts();
  }

  Future<void> _loadWorkouts() async {
    final workouts = await _storage.readWorkouts();
    setState(() {
      _workouts = workouts;
    });
  }

  void _addWorkout() async {
    final newWorkout = await showDialog<Workout>(
      context: context,
      builder: (BuildContext context) {
        String imagePath = '';
        int workoutTime = 0;
        String workoutInfo = '';

        return AlertDialog(
          title: Text('افزودن تمرین جدید'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'مسیر تصویر'),
                onChanged: (value) {
                  imagePath = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'زمان تمرین (دقیقه)'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  workoutTime = int.tryParse(value) ?? 0;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'توضیحات تمرین'),
                onChanged: (value) {
                  workoutInfo = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('لغو'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(Workout(
                  id: _workouts.length + 1,
                  imagePath: imagePath,
                  workoutTime: workoutTime,
                  workoutInfo: workoutInfo,
                ));
              },
              child: Text('افزودن'),
            ),
          ],
        );
      },
    );

    if (newWorkout != null) {
      setState(() {
        _workouts.add(newWorkout);
      });
      _storage.writeWorkouts(_workouts);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تمرین‌ها'),
      ),
      body: Center(
        child: _workouts.isEmpty
            ? Text('هیچ تمرینی وجود ندارد.')
            : ListView.builder(
                itemCount: _workouts.length,
                itemBuilder: (context, index) {
                  final workout = _workouts[index];
                  return ListTile(
                    leading: Image.asset(workout.imagePath),
                    title: Text(workout.workoutInfo),
                    subtitle: Text('${workout.workoutTime} دقیقه'),
                  );
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addWorkout,
        child: Icon(Icons.add),
      ),
    );
  }
}
