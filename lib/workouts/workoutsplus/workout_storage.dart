import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:Zerang/workouts/workoutsplus/workout_class.dart';

class WorkoutStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/workouts.json');
  }

  Future<File> writeWorkouts(List<Workout> workouts) async {
    final file = await _localFile;
    String jsonWorkouts = jsonEncode(workouts.map((w) => w.toJson()).toList());
    return file.writeAsString(jsonWorkouts);
  }

  Future<List<Workout>> readWorkouts() async {
    try {
      final file = await _localFile;
      String contents = await file.readAsString();
      List<dynamic> jsonWorkouts = jsonDecode(contents);
      return jsonWorkouts.map((json) => Workout.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }
}
