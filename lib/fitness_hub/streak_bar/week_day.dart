String getCurrentWeekDay(int day) {
  DateTime now = DateTime.now();
  int currentWeekDay = (now.weekday + day) % 7;
  if (currentWeekDay <= 0) {
    currentWeekDay += 7;
  }

  String dayOfWeek = '';

  switch (currentWeekDay) {
    case 1:
      dayOfWeek = 'دو شنبه';
      break;
    case 2:
      dayOfWeek = 'سه شنبه';
      break;
    case 3:
      dayOfWeek = 'چهارشنبه';
      break;
    case 4:
      dayOfWeek = 'پنج شنبه';
      break;
    case 5:
      dayOfWeek = 'جمعه';
      break;
    case 6:
      dayOfWeek = 'شنبه';
      break;
    case 7:
      dayOfWeek = 'یک شنبه';
      break;
    default: 
      dayOfWeek = 'نامعتبر'; 
      break;
  }

  return dayOfWeek;
}
