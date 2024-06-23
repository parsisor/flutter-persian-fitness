import 'package:flutter/material.dart';
import 'package:Zerang/Theme/consts.dart';
import 'package:Zerang/workouts/workoutsplus/workout_detail_page.dart';
import 'package:Zerang/workouts/workoutsplus/workout_storage.dart';
import 'package:Zerang/workouts/workoutsplus/workout_class.dart'; 

class WorkoutPage extends StatefulWidget {
  final String id;

  const WorkoutPage({Key? key, required this.id}) : super(key: key);

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  List<WorkoutBase> filteredWorkouts = [];
  String? selectedLevel;

  @override
  void initState() {
    super.initState();
    filterWorkouts();
  }

  void filterWorkouts({String? level}) {
    List<WorkoutBase> workouts;
    switch (widget.id) {
      case 'sine':
        workouts = wdataset.where((workout) => workout.wsection.contains('sine')).toList();
        break;
      case 'bazo':
        workouts = wdataset.where((workout) => workout.wsection.contains('bazo')).toList();
        break;
      case 'pa':
        workouts = wdataset.where((workout) => workout.wsection.contains('pa')).toList();
        break;
      case 'badan':
        workouts = wdataset;
        break;
      default:
        workouts = [];
        break;
    }

    if (level != null && level != 'all') {
      workouts = workouts.where((workout) => workout.wlevel == level).toList();
    }

    setState(() {
      filteredWorkouts = workouts;
      selectedLevel = level;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('ورزش‌ها'),
          centerTitle: true,
          actions: [
            PopupMenuButton<String>(
              icon: Icon(Icons.filter_list),
              onSelected: (String level) {
                filterWorkouts(level: level);
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'all',
                    child: Text('همه ورزش‌ها'),
                  ),
                  PopupMenuItem<String>(
                    value: 'آسان/easy',
                    child: Text('آسان'),
                  ),
                  PopupMenuItem<String>(
                    value: 'متوسط/Medium',
                    child: Text('متوسط'),
                  ),
                  PopupMenuItem<String>(
                    value: 'سخت/hard',
                    child: Text('سخت'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: filteredWorkouts.isEmpty
            ? Center(child: Text('هیچ ورزشی برای نمایش وجود ندارد'))
            : ListView.builder(
                itemCount: filteredWorkouts.length,
                itemBuilder: (context, index) {
                  final workout = filteredWorkouts[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    child: GestureDetector(
                      onLongPress: () {
                        
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        height: 100,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 5,
                          color: isDarkMode ? Colors.grey[800] : Colors.grey[200],
                          child: ListTile(
                            leading: Hero(
                              tag: workout.wGif,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  workout.wGif,
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              workout.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              'سطح: ${workout.wlevel}',
                              style: TextStyle(
                                fontSize: 16,
                                color: isDarkMode ? Colors.white70 : Colors.black87,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WorkoutDetailPage(workout: workout),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
