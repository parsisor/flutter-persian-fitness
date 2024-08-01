class WorkoutStep {
  final String description;
  final int duration;

  WorkoutStep({required this.description, required this.duration});
}

class targetMuscles {
  final String muscle;
  targetMuscles({required this.muscle});
}

class WorkoutBase {
  final int wid;
  final List<String> wsection;
  final String name;
  final String wGif;
  final int wstime;
  final int avcalorie;
  final String wlevel;
  final String wType;
  final List<targetMuscles> targetMuscle;
  final String wneeds;
  final List<WorkoutStep> steps;

  WorkoutBase({
    required this.wid,
    required this.wsection,
    required this.name,
    required this.wGif,
    required this.wstime,
    required this.avcalorie,
    required this.wlevel,
    required this.wType,
    required this.targetMuscle,
    required this.wneeds,
    required this.steps,
  });
}

final List<WorkoutBase> wdataset = [
  WorkoutBase(
    wid: 1,
    wsection: ["sine", "bazo"],
    name: "شنا سوئدی",
    wGif: 'assets/gifs/workout_gifs/push_up.gif',
    wstime: 120,
    avcalorie: 300,
    wlevel: "متوسط/Medium",
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
    wsection: ["pa"],
    name: "اسکات",
    wGif:
        'assets/workout/zerang_pack/man-doing-bodyweight-good-morning-exercise-8294642-6634976.gif',
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
      WorkoutStep(
          description: "بایستید، پاها به عرض شانه باز باشد.", duration: 10),
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
    wsection: ["pa"],
    name: "لانژ",
    wGif:
        'assets/workout/zerang_pack/man-doing-barbell-split-squat-exercise-for-legs-11095301-8971922.gif',
    wstime: 90,
    avcalorie: 150,
    wlevel: "متوسط/Medium",
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
      WorkoutStep(
          description: "بایستید، پاها به عرض شانه باز باشد.", duration: 10),
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
    wsection: ["bazo"],
    name: "بارفیکس",
    wGif:
        'assets/workout/zerang_pack/man-doing-wide-pull-up-exercise-8754594-7066429.gif',
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
    wsection: ["sine", "bazo"],
    name: "دیپ",
    wGif:
        'assets/workout/zerang_pack/man-doing-bench-dip-exercise-8754596-7066431.gif',
    wstime: 30,
    avcalorie: 80,
    wlevel: "متوسط/Medium",
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
    wsection: ["sine"],
    name: "کرانچ",
    wGif:
        'assets/workout/zerang_pack/man-doing-bicycle-crunch-exercise-8574453-6770295.gif',
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
      WorkoutStep(
          description: "روی زمین دراز بکشید و زانوها را خم کنید.",
          duration: 10),
      WorkoutStep(
          description:
              "با استفاده از عضلات شکم، بدن خود را به سمت زانوها بالا بکشید، سپس به آرامی به حالت اولیه برگردید.",
          duration: 50),
    ],
  ),
  WorkoutBase(
    wid: 7,
    wsection: ["sine", "pa", "bazo"],
    name: "برپی",
    wGif:
        'assets/workout/zerang_pack/man-doing-lunge-jump-alternating-exercise-8294627-6634961.gif',
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
    wsection: ["sine", "pa", "bazo"],
    name: "جامپینگ جک",
    wGif:
        'assets/workout/zerang_pack/man-doing-side-split-squats-exercise-8294641-6634975.gif',
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
  WorkoutBase(
    wid: 9,
    wsection: ["pa"],
    name: "سکانتر",
    wGif:
        'assets/workout/zerang_pack/man-doing-side-split-squats-exercise-8294641-6634975.gif',
    wstime: 90,
    avcalorie: 180,
    wlevel: "متوسط/Medium",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "پایینی بدن"),
      targetMuscles(muscle: "lower body"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
        description:
            "قدم به جلو بردارید و زانوی جلو را به زاویه 90 درجه خم کنید.",
        duration: 30,
      ),
      WorkoutStep(
        description: "با استفاده از عضلات پاها به حالت اولیه برگردید.",
        duration: 60,
      ),
    ],
  ),
  WorkoutBase(
    wid: 10,
    wsection: ["sine", "pa"],
    name: "پلانک",
    wGif:
        'assets/workout/zerang_pack/man-doing-body-saw-exercise-9316868-7613220.gif',
    wstime: 120,
    avcalorie: 250,
    wlevel: "متوسط/Medium",
    wType: "تمرینات بدنی/core bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "مرکز بدن"),
      targetMuscles(muscle: "core"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
        description: "به حالت پلانک بروید با کمر صاف و عضلات شکم فشرده.",
        duration: 120,
      ),
    ],
  ),
  WorkoutBase(
    wid: 11,
    wsection: ["bazo"],
    name: "سنگ کشی",
    wGif:
        'assets/workout/zerang_pack/man-doing-overhead-forward-lunges-alternating-exercise-8754606-7066440.gif',
    wstime: 60,
    avcalorie: 150,
    wlevel: "متوسط/Medium",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "بازو"),
      targetMuscles(muscle: "biceps"),
      targetMuscles(muscle: "پشت"),
      targetMuscles(muscle: "back"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
        description:
            "برای شروع، بازوها را با کمر به بالا ببرید و سپس بازگشت به حالت اولیه.",
        duration: 60,
      ),
    ],
  ),
  WorkoutBase(
    wid: 12,
    wsection: ["sine", "pa", "bazo"],
    name: "فلکه",
    wGif:
        'assets/workout/zerang_pack/man-doing-plank-jumping-lunges-exercise-8613999-6830364.gif',
    wstime: 90,
    avcalorie: 200,
    wlevel: "متوسط/Medium",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "کل بدن"),
      targetMuscles(muscle: "full body"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
        description:
            "به حالت پلانک بروید و سپس بازگشت به حالت اولیه با کمک دست‌ها.",
        duration: 30,
      ),
      WorkoutStep(
        description:
            "پاها را به طرف دست راست ببرید و سپس بازگشت به حالت اولیه.",
        duration: 60,
      ),
    ],
  ),
  WorkoutBase(
    wid: 13,
    wsection: ["sine", "pa"],
    name: " ریه پرش",
    wGif:
        'assets/workout/zerang_pack/man-doing-jumping-lunges-exercise-9599460-7772712.gif',
    wstime: 60,
    avcalorie: 120,
    wlevel: "متوسط/Medium",
    wType: "تمرینات بدنی/aerobic bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "پایینی بدن"),
      targetMuscles(muscle: "lower body"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
        description: "پاها را به بالا ببرید و به طرف بالا پرش کنید.",
        duration: 60,
      ),
    ],
  ),
  WorkoutBase(
    wid: 14,
    wsection: ["bazo"],
    name: "رالی",
    wGif:
        'assets/workout/zerang_pack/man-doing-curtsy-lunge-exercise-8574462-6770304.gif',
    wstime: 45,
    avcalorie: 100,
    wlevel: "آسان/easy",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "بازو"),
      targetMuscles(muscle: "biceps"),
      targetMuscles(muscle: "پشت"),
      targetMuscles(muscle: "back"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
        description:
            "در حالی که پاها را به طرف جلو ببرید، بازوها را به بالا بکشید.",
        duration: 45,
      ),
    ],
  ),
  WorkoutBase(
    wid: 15,
    wsection: ["pa"],
    name: "اسکات هوا",
    wGif: 'assets/workout/zerang_pack/man-doing-air-squat-exercise.gif',
    wstime: 60,
    avcalorie: 150,
    wlevel: "آسان/easy",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "ران"),
      targetMuscles(muscle: "quadriceps"),
      targetMuscles(muscle: "باسن"),
      targetMuscles(muscle: "glutes"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
          description: "بایستید، پاها به عرض شانه باز باشد.", duration: 10),
      WorkoutStep(
          description:
              "در حالی که عضلات شکم را منقبض کرده‌اید، به آرامی زانوها را خم کنید تا انگار می‌خواهید روی صندلی بنشینید. مراقب باشید که زانوها از نوک پا جلوتر نروند.",
          duration: 30),
      WorkoutStep(
          description:
              "با فشار دادن پاشنه پا به زمین، به آرامی به حالت ایستاده برگردید.",
          duration: 20),
    ],
  ),
  WorkoutBase(
    wid: 16,
    wsection: ["pa"],
    name: "بالا بردن متناوب پاها",
    wGif:
        'assets/workout/zerang_pack/man-doing-alternating-leg-raises-exercise-9599456-7772708.gif',
    wstime: 50,
    avcalorie: 100,
    wlevel: "متوسط/Medium",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "شکم"),
      targetMuscles(muscle: "abdominals"),
      targetMuscles(muscle: "ران"),
      targetMuscles(muscle: "quadriceps"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
          description: "روی زمین دراز بکشید و دست‌ها را در کنار بدن قرار دهید.",
          duration: 10),
      WorkoutStep(
          description:
              "یک پا را به آرامی بالا ببرید تا اینکه زاویه 90 درجه با زمین بسازد.",
          duration: 20),
      WorkoutStep(
          description:
              "پا را پایین بیاورید و این حرکت را با پای دیگر تکرار کنید.",
          duration: 20),
    ],
  ),
  WorkoutBase(
    wid: 17,
    wsection: ["sine", "bazo"],
    name: "شنا آرچر",
    wGif:
        'assets/workout/zerang_pack/man-doing-archer-push-up-exercise-8574472-6770293.gif',
    wstime: 80,
    avcalorie: 250,
    wlevel: "سخت/Hard",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "سینه"),
      targetMuscles(muscle: "chest"),
      targetMuscles(muscle: "سرشانه"),
      targetMuscles(muscle: "shoulders"),
      targetMuscles(muscle: "پشت بازو"),
      targetMuscles(muscle: "triceps"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
          description:
              "چهار دست و پا روی زمین قرار بگیرید، دست‌های‌تان را بیشتر از عرض شانه‌ها باز کنید.",
          duration: 10),
      WorkoutStep(
          description:
              "به یک طرف خم شوید تا یکی از دست‌ها صاف شود و دست دیگر آرنج‌اش خم شود.",
          duration: 30),
      WorkoutStep(
          description: "به حالت شروع بازگردید و به طرف دیگر خم شوید.",
          duration: 40),
    ],
  ),
  WorkoutBase(
    wid: 18,
    wsection: ["pa", "bazo"],
    name: "ردیف متناوب رنِگید",
    wGif:
        'assets/workout/zerang_pack/man-doing-alternating-renegade-row-exercise-for-back-10850668-8798371.gif',
    wstime: 70,
    avcalorie: 180,
    wlevel: "متوسط/Medium",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "پشت"),
      targetMuscles(muscle: "back"),
      targetMuscles(muscle: "پشت بازو"),
      targetMuscles(muscle: "triceps"),
      targetMuscles(muscle: "شانه"),
      targetMuscles(muscle: "shoulders"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
          description:
              "چهار دست و پا روی زمین قرار بگیرید، دمبل‌ها را در دست بگیرید.",
          duration: 10),
      WorkoutStep(
          description:
              "یک دمبل را به سمت پایین شکم بالا ببرید، در حالی که بدن را ثابت نگه می‌دارید.",
          duration: 30),
      WorkoutStep(
          description:
              "دمبل را پایین بیاورید و این حرکت را با دست دیگر تکرار کنید.",
          duration: 30),
    ],
  ),
  WorkoutBase(
    wid: 19,
    wsection: ["pa"],
    name: "اسکات پیستول کمکی",
    wGif:
        'assets/workout/zerang_pack/man-doing-assisted-pistol-squat-exercise-8574452-6770294.gif',
    wstime: 90,
    avcalorie: 220,
    wlevel: "سخت/Hard",
    wType: "تمرینات بدنی/compound bodyweight",
    targetMuscle: [
      targetMuscles(muscle: "ران"),
      targetMuscles(muscle: "quadriceps"),
      targetMuscles(muscle: "باسن"),
      targetMuscles(muscle: "glutes"),
      targetMuscles(muscle: "پشت ران"),
      targetMuscles(muscle: "hamstrings"),
    ],
    wneeds: "بدون نیاز به وسیله (no need for equipment)",
    steps: [
      WorkoutStep(
          description: "بایستید، یک پا را کمی جلوتر از بدن بلند کنید.",
          duration: 10),
      WorkoutStep(
          description:
              "در حالی که پای دیگر را خم می‌کنید به آرامی پایین بیایید، با دست‌ها به جایی تکیه دهید.",
          duration: 50),
      WorkoutStep(
          description:
              "با فشار دادن پاشنه پا به زمین، به آرامی به حالت ایستاده برگردید.",
          duration: 30),
    ],
  ),
  WorkoutBase(
  wid: 20,
  wsection: ["pa"],
  name: "کشش Y پشت",
  wGif: 'assets/workout/zerang_pack/man-doing-y-back-extension-exercise-8754595-7066430.gif',
  wstime: 70,
  avcalorie: 130,
  wlevel: "متوسط/Medium",
  wType: "تمرینات بدنی/compound bodyweight",
  targetMuscle: [
    targetMuscles(muscle: "پشت"),
    targetMuscles(muscle: "back"),
    targetMuscles(muscle: "پشت شانه"),
    targetMuscles(muscle: "rear deltoids"),
  ],
  wneeds: "بدون نیاز به وسیله (no need for equipment)",
  steps: [
    WorkoutStep(description: "روی زمین دراز بکشید، بازوها را به شکل Y بالای سر بکشید.", duration: 10),
    WorkoutStep(
        description: "به آرامی بالاتنه را از زمین بلند کنید و بازوها را به سمت بالا و عقب بکشید.",
        duration: 30),
    WorkoutStep(
        description: "به آرامی به حالت شروع بازگردید.",
        duration: 30),
  ],
),

WorkoutBase(
  wid: 21,
  wsection: ["pa"],
  name: "وایپرها",
  wGif: 'assets/workout/zerang_pack/man-doing-wipers-exercise-8613983-6830349.gif',
  wstime: 60,
  avcalorie: 110,
  wlevel: "سخت/Hard",
  wType: "تمرینات بدنی/compound bodyweight",
  targetMuscle: [
    targetMuscles(muscle: "شکم"),
    targetMuscles(muscle: "abdominals"),
    targetMuscles(muscle: "پهلو"),
    targetMuscles(muscle: "obliques"),
  ],
  wneeds: "بدون نیاز به وسیله (no need for equipment)",
  steps: [
    WorkoutStep(description: "روی زمین دراز بکشید و پاها را به صورت عمودی بالا ببرید.", duration: 10),
    WorkoutStep(
        description: "پاها را به یک طرف بچرخانید تا نزدیک زمین برسند، سپس به مرکز برگردید.",
        duration: 30),
    WorkoutStep(
        description: "همین حرکت را به طرف دیگر تکرار کنید.",
        duration: 20),
  ],
),

WorkoutBase(
  wid: 22,
  wsection: ["sine", "bazo"],
  name: "شنا پهن",
  wGif: 'assets/workout/zerang_pack/man-doing-wide-push-up-exercise-9316866-7613219.gif',
  wstime: 80,
  avcalorie: 160,
  wlevel: "متوسط/Medium",
  wType: "تمرینات بدنی/compound bodyweight",
  targetMuscle: [
    targetMuscles(muscle: "سینه"),
    targetMuscles(muscle: "chest"),
    targetMuscles(muscle: "سرشانه"),
    targetMuscles(muscle: "shoulders"),
  ],
  wneeds: "بدون نیاز به وسیله (no need for equipment)",
  steps: [
    WorkoutStep(description: "چهار دست و پا روی زمین قرار بگیرید و دست‌ها را بیشتر از عرض شانه‌ها باز کنید.", duration: 10),
    WorkoutStep(
        description: "به آرامی پایین بروید تا آرنج‌ها زاویه 90 درجه بسازند.",
        duration: 40),
    WorkoutStep(
        description: "با فشار به دست‌ها به حالت شروع بازگردید.",
        duration: 30),
  ],
),

WorkoutBase(
  wid: 23,
  wsection: ["pa", "bazo"],
  name: "پول آپ پهن",
  wGif: 'assets/workout/zerang_pack/man-doing-wide-pull-up-exercise-8754594-7066429.gif',
  wstime: 90,
  avcalorie: 190,
  wlevel: "سخت/Hard",
  wType: "تمرینات بدنی/compound bodyweight",
  targetMuscle: [
    targetMuscles(muscle: "پشت"),
    targetMuscles(muscle: "back"),
    targetMuscles(muscle: "بیسپس"),
    targetMuscles(muscle: "biceps"),
    targetMuscles(muscle: "شانه"),
    targetMuscles(muscle: "shoulders"),
  ],
  wneeds: "بدون نیاز به وسیله (no need for equipment)",
  steps: [
    WorkoutStep(description: "به میله بارفیکس آویزان شوید و دست‌ها را بیشتر از عرض شانه‌ها باز کنید.", duration: 10),
    WorkoutStep(
        description: "به آرامی بالا بکشید تا چانه به میله نزدیک شود.",
        duration: 40),
    WorkoutStep(
        description: "به آرامی به حالت شروع بازگردید.",
        duration: 40),
  ],
),

WorkoutBase(
  wid: 24,
  wsection: ["sine"],
  name: "دیپس وزنه دار",
  wGif: 'assets/workout/zerang_pack/man-doing-weighted-dips-exercise-for-chest-11218576-8971867.gif',
  wstime: 70,
  avcalorie: 180,
  wlevel: "سخت/Hard",
  wType: "تمرینات بدنی/compound bodyweight",
  targetMuscle: [
    targetMuscles(muscle: "سینه"),
    targetMuscles(muscle: "chest"),
    targetMuscles(muscle: "پشت بازو"),
    targetMuscles(muscle: "triceps"),
  ],
  wneeds: "وزنه (weight)",
  steps: [
    WorkoutStep(description: "بر روی دستگاه دیپس بایستید و وزنه را به بدن ببندید.", duration: 10),
    WorkoutStep(
        description: "به آرامی پایین بروید تا آرنج‌ها زاویه 90 درجه بسازند.",
        duration: 30),
    WorkoutStep(
        description: "با فشار به دست‌ها به حالت شروع بازگردید.",
        duration: 30),
  ],
),

];
