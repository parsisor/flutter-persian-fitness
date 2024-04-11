import '../workouts/workout_data.dart';

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
