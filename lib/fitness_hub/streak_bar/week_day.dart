String getCurrentWeekDay(int day) {
  DateTime now = DateTime.now();
  int currentWeekDay = (now.weekday + day) % 7;

  List<String> daysOfWeek = [
    'یک شنبه', 
    'دو شنبه', 
    'سه شنبه', 
    'چهارشنبه', 
    'پنج شنبه', 
    'جمعه',    
    'شنبه'     
  ];

  return daysOfWeek[currentWeekDay];
}
