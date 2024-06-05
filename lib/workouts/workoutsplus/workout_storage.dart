import 'package:Zerang/workouts/workoutsplus/workout_class.dart';

final List<WorkoutBase> wdataset = [
  WorkoutBase(
    wid: 1,
    name: "شنا سوئدی",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 120,
    avcalorie: 300,
    wlevel: "متوسط/medium",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "سینه"),
      targetMuscles(muscle: "chest"),
      targetMuscles(muscle: "سرشانه"),
      targetMuscles(muscle: "shoulders"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
          description:
              "چهار دست و پا روی زمین قرار بگیرید، دست‌های‌تان را اندکی بیشتر از عرض شانه‌ها باز کنید.",
          duration: 10),
      WorkoutStep(
          description:
              "پاهای‌تان را تا جایی عقب ببرید تا اینکه روی دست‌ها و انگشتان پا تعادل داشته باشید. بدن باید از سر تا پا در یک خط صاف باشد بدون اینکه به کمر یا شکم خود قوس بدهید. برای راحتی می‌توانید پاهای خود را کمی به هم نزدیک‌تر یا اندکی از هم دورتر کنید.",
          duration: 30),
      WorkoutStep(
          description:
              "قبل از آغاز حرکت، عضلات شکم را منقبض کرده و میان‌تنه را با نزدیک کردن ناف خود به ستون فقرات، سفت کنید. در طول حرکت، همین حالت را حفظ کنید.",
          duration: 30),
      WorkoutStep(
          description:
              "درحالیکه به آرامی آرنج‌ها را خم می‌کنید نفس بگیرید و پایین بیایید تا اینکه با آرنج‌ها زاویه 90 درجه بسازند.",
          duration: 30),
      WorkoutStep(
          description:
              "در حالیکه شروع به انقباض عضلات سینه می‌کنید و با کمک دست‌ها در حال بازگشت به نقطه شروع حرکت هستید، بازدم انجام دهید. آرنج‌ها را قفل نکنید و آنها را اندکی خم نگه دارید.",
          duration: 30)
    ],
  ),
  WorkoutBase(
    wid: 2,
    name: "اسکات",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 60,
    avcalorie: 200,
    wlevel: "آسان/easy",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "ران"),
      targetMuscles(muscle: "hamstrings"),
      targetMuscles(muscle: "باسن"),
      targetMuscles(muscle: "glutes"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(description: "بایستید، پاها به عرض شانه باز باشد.", duration: 10),
      WorkoutStep(
          description:
              "در حالی که عضلات شکم را منقبض کرده‌اید، به آرامی زانوها را خم کنید تا انگار می‌خواهید روی صندلی بنشینید. مراقب باشید که زانوها از نوک پا جلوتر نروند.",
          duration: 30),
      WorkoutStep(
          description:
              "با فشار دادن پاشنه پا به زمین، به آرامی به حالت ایستاده برگردید.",
          duration: 30),
    ],
  ),
  WorkoutBase(
    wid: 3,
    name: "لانژ",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 90,
    avcalorie: 150,
    wlevel: "متوسط/medium",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "ران"),
      targetMuscles(muscle: "hamstrings"),
      targetMuscles(muscle: "باسن"),
      targetMuscles(muscle: "glutes"),
      targetMuscles(muscle: "ساق پا"),
      targetMuscles(muscle: "calves"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(description: "بایستید، پاها به عرض شانه باز باشد.", duration: 10),
      WorkoutStep(
          description:
              "گام بلندی به جلو بردارید و زانوی پای جلو را به سمت زمین خم کنید تا زاویه 90 درجه با ران تشکیل دهد. زانوی پای عقب را به سمت زمین پایین بیاورید تا تقریباً به زمین برسد.",
          duration: 30),
      WorkoutStep(
          description:
              "با فشار دادن پاشنه پای جلو به زمین، به حالت ایستاده برگردید و به نقطه شروع بازگردید. حرکت را با پای دیگر تکرار کنید.",
          duration: 30),
    ],
  ),
  WorkoutBase(
    wid: 4,
    name: "بارفیکس",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 30,
    avcalorie: 100,
    wlevel: "سخت/hard",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "بازو"),
      targetMuscles(muscle: "biceps"),
      targetMuscles(muscle: "پشت"),
      targetMuscles(muscle: "back"),
      targetMuscles(muscle: "شانه"),
      targetMuscles(muscle: "shoulders"),
    ],
    wneeds: "نیاز به میله بارفیکس (need pull-up bar)",
    steps: [
      WorkoutStep(
          description:
              "زیر میله بارفیکس قرار بگیرید و با دست‌هایی به اندازه عرض شانه آن را بگیرید.",
          duration: 10),
      WorkoutStep(
          description:
              "بدن خود را بالا بکشید تا چانه‌تان از میله بالاتر رود، سپس به آرامی به حالت اولیه برگردید.",
          duration: 20),
    ],
  ),
  WorkoutBase(
    wid: 5,
    name: "دیپ",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 30,
    avcalorie: 80,
    wlevel: "متوسط/medium",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "سینه"),
      targetMuscles(muscle: "chest"),
      targetMuscles(muscle: "بازو"),
      targetMuscles(muscle: "triceps"),
    ],
    wneeds: "نیاز به میله‌های دیپ (need dip bars)",
    steps: [
      WorkoutStep(
          description:
              "بین دو میله دیپ قرار بگیرید و خود را بالا بکشید تا بازوها صاف شوند.",
          duration: 10),
      WorkoutStep(
          description:
              "به آرامی خود را پایین ببرید تا بازوها به زاویه 90 درجه برسند، سپس خود را دوباره بالا بکشید.",
          duration: 20),
    ],
  ),
  WorkoutBase(
    wid: 6,
    name: "کرانچ",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 60,
    avcalorie: 50,
    wlevel: "آسان/easy",
    wType: "تمرینات بدنی/isolation bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "شکم"),
      targetMuscles(muscle: "abdominals"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(description: "روی زمین دراز بکشید و زانوها را خم کنید.", duration: 10),
      WorkoutStep(
          description:
              "با استفاده از عضلات شکم، بدن خود را به سمت زانوها بالا بکشید، سپس به آرامی به حالت اولیه برگردید.",
          duration: 50),
    ],
  ),
  WorkoutBase(
    wid: 7,
    name: "برپی",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 30,
    avcalorie: 150,
    wlevel: "سخت/hard",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "کل بدن"),
      targetMuscles(muscle: "full body"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
          description: "به حالت اسکات بروید و دست‌ها را روی زمین قرار دهید.",
          duration: 10),
      WorkoutStep(
          description:
              "پاها را به عقب پرتاب کنید تا به حالت پلانک بروید، سپس به سرعت به حالت اسکات برگردید و بپرید.",
          duration: 20),
    ],
  ),
  WorkoutBase(
    wid: 8,
    name: "جامپینگ جک",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 60,
    avcalorie: 100,
    wlevel: "آسان/easy",
    wType: "تمرینات بدنی/aerobic bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "کل بدن"),
      targetMuscles(muscle: "full body"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
          description:
              "بایستید و پاها را کنار هم قرار دهید و دست‌ها در کنار بدن باشد.",
          duration: 10),
      WorkoutStep(
          description:
              "به سرعت پاها را به اطراف پرتاب کنید و همزمان دست‌ها را بالا ببرید، سپس به حالت اولیه برگردید.",
          duration: 50),
    ],
  ),
];
