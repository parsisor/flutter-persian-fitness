

class Workout {
  final int id;
  final String imagePath;
  final int workoutTime; 
  final String workoutInfo;

  Workout({
    required this.id,
    required this.imagePath,
    required this.workoutTime,
    required this.workoutInfo,
  });

  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'imagePath': imagePath,
      'workoutTime': workoutTime,
      'workoutInfo': workoutInfo,
    };
  }

  
  factory Workout.fromJson(Map<String, dynamic> json) {
    return Workout(
      id: json['id'],
      imagePath: json['imagePath'],
      workoutTime: json['workoutTime'],
      workoutInfo: json['workoutInfo'],
    );
  }
}
