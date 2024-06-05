const exercise_list_sine = [
  "شنا سوئدی",
  "شنا پرشی",
  "شنا زانو زمین",
  "پرس سینه با دمبل",
  "دراز نشست",
  "دیپ سینه",
  "شنا شیب منفی",
  "شنا سرشانه",
  "پرس سینه با کش بدنسازی",
  "فلای سینه با کش بدنسازی"
];
const exercise_code_sine = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const exercise_img_sine = [
  "assets/gifs/workout_gifs/push_up.gif",
  "assets/workout/sine.png",
  "assets/workout/sine.png",
  "assets/workout/sine.png",
  "assets/workout/sine.png",
  "assets/workout/sine.png",
  "assets/workout/sine.png",
  "assets/workout/sine.png",
  "assets/workout/sine.png",
  "assets/workout/sine.png",
];
const exercise_list_bazo = [
  "جلو بازو با دمبل",
  "پشت بازو دمبل خوابیده",
  "پشت بازو هالتر خم",
  "پشت بازو دیپ",
  "بارفیکس",
  "پارالل پشت بازو",
  "جلو بازو با کش بدنسازی",
  "پشت بازو با کش بدنسازی",
  "تاب دوسر با دمبل",
  "تاب تک‌دمبل"
];
const exercise_code_bazo = [11, 12, 13, 14, 15, 16, 17, 18, 19, 20];
const exercise_img_bazo = [
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
  "assets/workout/bazo.png",
];
const exercise_list_pa = [
  "اسکات",
  "لانژ",
  "ددلیفت",
  "لانژ پالس",
  "اسکات بلغاری",
  "پل باسن",
  "وال اسکات",
  "خم شدن به پهلو با دمبل",
  "بالا بردن ساق پا با دمبل",
  "جامپ اسکات"
];
const exercise_code_pa = [21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
const exercise_img_pa = [
  "assets/workout/pa.png",
  "assets/workout/pa.png",
  "assets/workout/pa.png",
  "assets/workout/pa.png",
  "assets/workout/pa.png",
  "assets/workout/pa.png",
  "assets/workout/pa.png",
  "assets/workout/pa.png",
  "assets/workout/pa.png",
  "assets/workout/pa.png",
];
const exercise_list_all = [
  "اسکات",
  "لانژ",
  "ددلیفت",
  "پرس سینه",
  "پارو قایقی",
  "بارفیکس",
  "شنا سوئدی",
  "دیپ نیمکت پا خم",
  "تاب دادن دمبل",
  "پلانک"
];
const exercise_code_all = [31, 32, 33, 34, 35, 36, 37, 38, 39, 40];
const exercise_img_all = [
  "assets/workout/badan.png",
  "assets/workout/badan.png",
  "assets/workout/badan.png",
  "assets/workout/badan.png",
  "assets/workout/badan.png",
  "assets/workout/badan.png",
  "assets/workout/badan.png",
  "assets/workout/badan.png",
  "assets/workout/badan.png",
  "assets/workout/badan.png",
];
Map<int, String> exerciseDescriptions = {
  1: "شنا سوئدی\n"
      "سطح حرکت: پیشرفته\n"
      "عضلات درگیر: پشت، بازو، سینه\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه، خانه\n"
      "وسایل مورد نیاز: بدون وسیله\n"
      "نحوه انجام:\n"
      "1. ابتدا روی زمین طوری قرار بگیرید که دست‌هایتان به اندازه عرض شانه‌هایتان باز باشد.\n"
      "2. نوک انگشتان پای روی زمین قرار گرفته باشد.\n"
      "3. بدن کاملاً صاف و همتراز زمین باشد.\n"
      "4. در همین وضعیت، آرنج خود را خم کنید و سینه خود را به سمت زمین نزدیک کنید.\n"
      "5. هنگام بالا آمدن، سعی کنید خود را به سمت بالا پرتاپ کنید و کف دست‌هایتان را از زمین جدا کنید.\n"
      "مدت زمان: 15 دقیقه\n"
      "قسمت‌های درگیر: ماهیچه‌های سینه‌ای، سه‌سر بازویی (پشت‌بازو)، و بخش جلویی دالی (سرشانه)",
  2: "شنا پرشی\n"
      "سطح حرکت: پیشرفته\n"
      "عضلات درگیر: پشت، بازو، سینه\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه، خانه\n"
      "وسایل مورد نیاز: بدون وسیله\n"
      "نحوه انجام:\n"
      "1. در آب شنا کرده و با پرش‌های مختلف حرکت کنید.\n"
      "مدت زمان: 20 دقیقه\n"
      "قسمت‌های درگیر: پاها، شکم",
  3: "شنا زانو زمین\n"
      "سطح حرکت: مبتدی\n"
      "عضلات درگیر: سینه\n"
      "نوع تمرین: قدرتی فانکشنال\n"
      "محل تمرین: باشگاه، خانه\n"
      "وسایل مورد نیاز: بدون وسیله\n"
      "نحوه انجام:\n"
      "1. ابتدا روی زمین طوری قرار بگیرید که کف دستاها و زانوهایتان روی زمین باشد.\n"
      "2. آرنج‌هایتان را خم کنید و سینه خود را به زمین نزدیک کنید.\n"
      "3. سپس به مرحله ابتدایی برگردید.\n",
  4: "پرس سینه با دمبل\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: سینه\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه\n"
      "وسایل مورد نیاز: دمبل\n"
      "نحوه انجام حرکت:\n"
      "1- ابتدا یک جفت دمبل مناسب انتخاب کنید و روی نیمکت دراز بکشید؛\n"
      "2- برای شروع حرکت باید دست صاف و کشیده باشد و دمبل‌ها بالای سینه قرار داشته باشند؛\n"
      "3- دمبل‌ها را تا روی سینه پایین بیاورید و سپس به‌آرامی وزنه به سمت بالا حرکت دهید؛\n"
      "4- هنگام پایین آمدن، سعی کنید زاویه آرنج و بازوی شما یک زاویه ۹۰ درجه باشد؛\n"
      "5- در قسمت بالاییِ حرکت سعی کنید آرنج‌هایتان کاملا صاف نشود تا فشار روی مفاصل شما انتقال پیدا کند.\n"
      "مدت زمان: 15 دقیقه\n"
      "قسمت‌های درگیر: ماهیچه‌های سینه‌ای، سه‌سر بازویی (پشت‌بازو)، و بخش جلویی دالی (سرشانه)",
  5: "دراز نشست\n"
      "سطح حرکت: مبتدی\n"
      "عضلات درگیر: شکم و فیله\n"
      "نوع تمرین: فانکشنال\n"
      "محل تمرین: باشگاه خانه\n"
      "وسایل مورد نیاز: بدون وسیله\n"
      "نحوه انجام حرکت:\n"
      "1- برای انجام حرکت دراز نشست یا کرانچ روی زمین دراز بکشید؛\n"
      "2- کف پاها روی زمین باشد؛\n"
      "3- دست‌ها بالا سر به‌صورت کاملا کشیده قرار بگیرد؛\n"
      "4- سعی کنید با بلند کردن بالاتنه از زمین و جدا کردن شانه‌ها از زمین، دست‌هایتان را از بین پاها به سمت جلو رد کنید و سپس به مرحله شروع بازگردید؛\n"
      "5- به هیچ عنوان ضربه سنگین وارد نکنید و بیش‌ازحد توانایی خود به سمت بالا نیایید.\n"
      "مدت زمان: به مدت 10 دقیقه به مدت 3 ست\n"
      "قسمت‌های درگیر: شکم، فیله",
  6: "دیپ سینه\n"
      "سطح تجربه: متوسط\n"
      "عضله دوم درگیر: دلتوئید قدامی، سه سر یا پشت بازو ها\n"
      "نوع انجام: هل دادن\n"
      "نگاه کلی حرکت دیپ سینه:\n"
      "دیپ سینه یک تمرین با وزن بدن است که عضلات سینه، سه سر یا پشت بازو و شانه ها را هدف قرار می دهد. این حرکت با استفاده از میله های موازی یا میله های شیب دار انجام می شوند و شامل پایین آوردن بدن با خم کردن آرنج ها و خم شدن اندکی به جلو و سپس و بالا بردن خود با صاف کردن بازوها می باشد\n"
      "نحوه اجرای حرکت دیپ سینه:\n"
      "1. رو به روی میله های موازی بایستید و دست ها را به اندازه عرض شانه باز کنید توجه کنید کف دست ها به سمت داخل باشد.\n"
      "2. به بالا بپرید و بازوهای خود را صاف کنید تا بدن کاملاً کشیده شود. پاهای شما باید از زمین جدا باشد.\n"
      "3. با خم کردن آرنج ها و خم شدن کمی به جلو، بدن خود را پایین بیاورید. سعی کنید آرنج ها را نزدیک به پهلوها نگه دارید.\n"
      "4. پایین آمدن را تا جایی ادامه دهید که شانه هایتان کمی زیر آرنج هایتان قرار گیرند یا تا زمانی که کشش کافی را در قفسه سینه خود احساس کنید.\n"
      "5. با صاف کردن بازوها و بازدم حین بالا آمدن، خود را به حالت اولیه برگردانید.\n"
      "6. همین روند را تکرار کنید.\n",
  7: "شنا شیب منفی\n"
      "سطح حرکت: پیشرفته\n"
      "عضلات درگیر: سینه\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه\n"
      "وسایل مورد نیاز: ماشین (لوازم باشگاه)\n"
      "نحوه انجام حرکت:\n"
      "1. طوری روی زمین قرار بگیرید که کف دست‌هایتان بازتر از عرض شانه‌ها روی زمین قرار بگیرد.\n"
      "2. پاهایتان را روی ارتفاع بالایی سکو قرار دهید.\n"
      "3. بدنتان کاملاً صاف باشد.\n"
      "4. سعی کنید آرنج‌ها را خم کرده و نزدیک ناحیه سینه ببرید و سپس سمت بالا بیاید.\n"
      "مدت زمان: 15 دقیقه\n"
      "قسمت‌های درگیر: ماهیچه‌های سینه‌ای، سه‌سر بازویی (پشت‌بازو)، و بخش جلویی دالی (سرشانه)",
  8: "شنا سرشانه\n"
      "سطح حرکت: پیشرفته\n"
      "عضلات درگیر: سرشانه\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه یا خانه\n"
      "وسایل مورد نیاز: بدون وسیله\n"
      "نحوه انجام حرکت:\n"
      "1. روی زمین طوری قرار بگیرید که کف دست‌هایتان روی زمین باشد.\n"
      "2. پاهایتان نزدیک به دست‌ها قرار بگیرد.\n"
      "3. طوری‌که کمر و باسنتان بالا باشد.\n"
      "4. بدن حالت هشت بگیرد نوک انگشتان پا رو زمین باشد.\n"
      "5. سر پایین قرار بگیرد.\n"
      "6. در همین وضعیت آرنج‌ها را خم کرده و بدون این‌که وضعیت کمرتان تغییری کند، به سمت زمین نزدیک شوید.\n"
      "مدت زمان: 20 دقیقه\n"
      "قسمت‌های درگیر: پاها، شکم",
  9: "پرس سینه با کش بدنسازی\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: سینه\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: خانه\n"
      "وسایل مورد نیاز: کش\n"
      "نحوه انجام حرکت:\n"
      "1. روی یک صندلی که کمی جلوتر از در و پشت به در است بنشینید.\n"
      "2. جایگاه دسته‌های کش را جوری تنظیم کنید که در امتداد سینه‌ها در حالت نشسته باشد.\n"
      "3. دستگیره‌ها را بگیرید و روی صندلی بنشینید.\n"
      "4. زاویه بازوها با بالاتنه باید کمتر از ۹۰ درجه باشد.\n"
      "5. کف دست‌ها رو به زمین باشد.\n"
      "6. دست‌ها را به سمت جلو سینه صاف کنید و سپس به حالت اولیه بازگردید.\n"
      "مدت زمان: به تعداد تکرارها\n"
      "قسمت‌های درگیر: ماهیچه‌های سینه‌ای",
  10: "فلای سینه با کش بدنسازی\n"
      "سطح حرکت: پیشرفته\n"
      "عضلات درگیر: زیربغل و پشت\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: خانه\n"
      "وسایل مورد نیاز: کش\n"
      "نحوه انجام حرکت:\n"
      "1. صاف بایستید و پاها را به اندازه عرض شانه باز کنید.\n"
      "2. کش را زیر پای خود نگه دارید و دست‌ها را از روبروی بدن بالا آورده و سر دیگر کش را با دست راست بگیرید.\n"
      "3. دست‌ها را به سمت کنار باز کنید؛ حرکت را در تعداد مذکور تکرار کنید.\n"
      "مدت زمان: به تعداد تکرارها\n"
      "قسمت‌های درگیر: زیربغل و پشت",
  11: "جلو بازو با دمبل\n"
      "نحوه انجام:\n"
      "عضله هدف: جلو بازو\n"
      "عضله کمکی: ساعد – سرشانه\n"
      "تجهیزات: دمبل (حرکات جلو بازو با دمبل)\n"
      "سطح حرکت: مبتدی تا حرفه‌ای\n"
      "نحوه اجرای حرکت:\n"
      "1. دو دمبل را برداشته و در کنار بدن خود قرار دهید. کف دست ها به سمت روبرو باشد. می توانید دست ها را جلو بدن خود نگه دارید.\n"
      "2. هر دو دست را تا بالاتر از سینه تا انقباض کامل بالا بیاورید.\n"
      "3. دست ها را در همان راستا با کنترل کامل پایین بیاورید تا به نقطه شروع باز گردید.\n"
      "4. در پایین اوردن وزنه عجله نداشته باشید و ارنج دست را کامل باز نکنید تا از اسیب مفصلی جلوگیری شود.\n"
      "5. در فاز مثبت حرکت(بالا بردن) عمل بازدم و در فاز منفی (پایین اوردن) عمل دم انجام شود.\n"
      "6. حرکت را به تعداد مشخص در برنامه تان انجام دهید.\n"
      "7. در هنگام بالا رفتن عمل بازدم و در زمان پایین آمدن عمل دم انجام شود.\n"
      "مدت زمان: به تعداد تکرارهای مشخص در برنامه\n"
      "قسمت‌های درگیر: ماهیچه‌های جلویی بازو",
  12: "پشت بازو دمبل خوابیده\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: پشت بازو\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه\n"
      "وسایل مورد نیاز: دمبل\n"
      "نحوه انجام حرکت:\n"
      "1. ابتدا در حالی‌که دمبل‌ها را مقابل سرشانه خود نگه داشته‌اید، روی میز دراز بکشید؛\n"
      "2. دست‌ها باید کاملاً کشیده باشند و با بالاتنه یا زمین زاویه نود درجه تشکیل دهند؛\n"
      "3. کف دست‌هایتان باید در مقابل یکدیگر و آرنج‌ها ثابت باشند؛ این نقطه شروع حرکت خواهد بود؛\n"
      "4. به‌آرامی دمبل‌ها را تا کنار گوش پایین ببرید؛\n"
      "5. دقت کنید که نیمه بالای دست‌ها و آرنج‌ها ثابت باشند؛\n"
      "6. با استفاده از ماهیچه‌های پشت بازو دمبل‌ها را به نقطه شروع باز گردانید.\n"
      "مدت زمان: به تعداد تکرارهای مشخص در برنامه\n"
      "قسمت‌های درگیر: عضلات پشت بازو",
  13: "پشت بازو هالتر خم\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: پشت بازو\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه\n"
      "وسایل مورد نیاز: هالتر، نیمکت\n"
      "نحوه انجام حرکت:\n"
      "1. ابتدا میله لاری را به اندازه شانه یا کمی جمع‌تر بگیرید و روی نیمکت دراز بکشید؛\n"
      "2. میله را بالای سربرده، آرنج‌ها ثابت و به سمت پایین خم کنید و آرام پشت سر پایین بیاورید؛\n"
      "3. نگذارید آرنج‌ها زیادی به سمت بیرون باز شوند؛\n"
      "4. سپس به آرنج‌ها باز کنید و دستانتان را صاف کنید؛\n"
      "5. سعی کنید آرنج‌ها به سمت جلو حرکت نکند؛\n"
      "6. حتماً پشت وزنه‌ها قلاب قرار دهید.\n"
      "مدت زمان: به تعداد تکرارهای مشخص در برنامه\n"
      "قسمت‌های درگیر: عضلات پشت بازو",
  14: "پشت بازو دیپ\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: پشت بازو\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه یا خانه\n"
      "وسایل مورد نیاز: نیمکت\n"
      "نحوه انجام حرکت:\n"
      "1. برای آغاز روی یک نیمکت نشسته و با دو دست خود یکی از لبه‌های آن را بگیرید و پاهای خود را در حالی‌که کف پاها روی زمین و زانوها خم هستند قرار دهید؛\n"
      "2. زانوها نسبت به زمین زاویه ۹۰ درجه دارند؛\n"
      "3. سپس در حالی‌که کمر صاف و عضلات شکم منقبض هستند بالاتنه را معلق کنید، این محل شروع حرکت است؛\n"
      "4. سپس نفس خود را داخل کشیده و آرنج‌ها را تا جایی که کشش کاملی را در عضلات پشت بازو احساس کنید، خم کنید؛\n"
      "5. با استفاده از عضلات پشت بازو به محل شروع بازگردید؛\n"
      "6. انقباض را برای یک لحظه حفظ کرده سپس حرکت را به تعداد لازم تکرار کنید، آرنج ها در تمام مدت تمرین باید به سمت پشت بدن اشاره کنند.\n"
      "مدت زمان: به تعداد تکرارهای مشخص در برنامه\n"
      "قسمت‌های درگیر: عضلات پشت بازو",
  15: "بارفیکس\n"
      "نحوه صحیح قرارگیری دست‌ها در بارفیکس:\n"
      "برای انجام بارفیکس ابتدا باید دست‌ها را کمی بیشتر از اندازه عرض شانه باز کرده و سپس میله را بگیرید. یکی از نکات بسیار مهم در آموزش بارفیکس، نحوه قرارگیری دست‌ها است. وضعیت کف دست‌ها در گرفتن میله، سه حالت می‌تواند داشته باشد.\n"
      "اگر کف دست‌ها به سمت صورت شما باشد: عضلات جلو بازوی‌تان تقویت خواهد شد.\n"
      "چنان‌چه آن‌ها به طرف یکدیگر باشد: عضلات ساعد و پنجه تقویت می‌شوند.\n"
      "اگر کف دست‌ها به سمت بیرون باشد: عضلات زیر بغل‌تان تقویت خواهد شد.\n"
      "مدت زمان: به تعداد تکرارهای مشخص در برنامه\n"
      "قسمت‌های درگیر: عضلات سینه، پشتی بازو",
  16: "پارالل پشت بازو\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: پشت بازو\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه\n"
      "وسایل مورد نیاز: ماشین (لوازم باشگاه)\n"
      "نحوه انجام حرکت:\n"
      "برای شروع روی دستگاه پارالل قرار بگیرید؛\n"
      "در نقطه شروع بدن خود را در حالی دست‌ها کشیده و مفاصل تقریباً قفل هستند بالا نگه دارید؛\n"
      "بالاتنه کاملاً صاف و سرتان نیز بالا باشد؛ به‌آرامی پایین بروید؛\n"
      "بالاتنه باید صاف و آرنج‌ها در کنار بدن قرار داشته باشند؛\n"
      "این به شما کمک می‌کند ماهیچه پشت بازو بیشتر درگیر شود؛\n"
      "حداقل تا محلی که بازو با ساعد زاویه نود درجه تشکیل دهد پایین بروید؛\n"
      "سپس فشار کف دست‌ها و با استفاده از پشت بازوها بدن خود را به نقطه شروع بازگردانید.\n",
  17: "جلو بازو با کش بدنسازی\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: جلو بازو\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: خانه\n"
      "وسایل مورد نیاز: کش\n"
      "نحوه انجام حرکت:\n"
      "صاف بایستید و کش را زیر پای خود قرار دهید؛\n"
      "بندهای کش را در دستان‌تان نگه دارید طوری‌که کف دست‌ها به سمت بالا باشد؛\n"
      "دست‌ها کنار بدن کشیده و صاف باشد؛\n"
      "دستان خود را هم‌زمان به سمت بالا بیاورید و سعی کنید که آرنج‌تان تکان نخورد و سپس به سمت پایین آرنج خود را باز کنید.\n",
  18: "پشت بازو با کش بدنسازی\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: پشت بازو\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: خانه\n"
      "وسایل مورد نیاز: کش\n"
      "نحوه انجام حرکت:\n"
      "کش را در بالاترین نقطه قرار داده و جلوی در بایستید؛\n"
      "در حالی که فاصله دست‌ها به اندازه سرشانه است و کف دست‌ها به سمت پایین قرار دارد، دسته‌های آن را در دست بگیرید؛\n"
      "درحالیکه ایستاده اید باید بدن شما اندکی به سمت جلو متمایل شده باشد؛\n"
      "نیمه بالای دست‌های شما باید به بدن نزدیک و نسبت به زمین زاویه عمود داشته باشد؛\n"
      "با استفاده از ماهیچه پشت بازو و باز کردن آرنج کش را تا محلی که به پاها برسد و دست‌ها کاملا کشیده شوند، پایین ببرید؛\n"
      "نیمه بالای دست شما باید در همه حال ثابت باقی بماند؛\n"
      "پس از مکثی مختصر در پایین‌ترین نقطه، دست‌ها را به آرامی به نقطه شروع بازگردانید.\n",
  19: "تاب دوسر با دمبل\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: شکم و فیله سرشانه باسن - سرینی\n"
      "نوع تمرین: قدرتی فانکشنال\n"
      "محل تمرین: باشگاه خانه\n"
      "وسایل مورد نیاز: دمبل\n"
      "نحوه انجام حرکت:\n"
      "یک دمبل مناسب انتخاب کنید و با دو دست از یک سر دمبل گرفته و جلوی بدن نگه دارید؛\n"
      "پاها کمی بازتر از عرض شانه باشد و صاف بایستید؛\n"
      "برای شروع به جلو خم شوید و از کمر حرکت کنید و پشت‌تان را کاملاً صاف نگه دارید؛\n"
      "دمبل را بین پاهای‌تان و عقب ببرید و سعی کنید به سمت جلو و بالا حرکت دهید و تا جلوی صورتتان بیاورید؛\n"
      "دست‌ها کاملاً در حین اجرای حرکت صاف باشد.\n",
  20: "تاب تک دمبل\n"
      "عضله هدف: قسمت فوقانی سینه (بالا سینه)\n"
      "عضله کمکی: دلتوئید قدامی (سرشانه جلویی)، ساعد و سه سربازویی (پشت بازو) و عضلات میانی (Core)\n"
      "تجهیزات: دمبل (حرکات سینه با دمبل)\n"
      "سطح حرکت: مبتدی تا حرفه‌ای\n"
      "نحوه اجرای حرکت:\n"
      "کراس دمبل تک دست\n"
      "برای اجرای حرکت ابتدا یک دمبل با وزن مناسب انتخاب کنید و سپس به گونه‌ای بایستید که بدن کاملاً صاف، سر در راستای ستون فقرات و پاها به اندازه عرض شانه باز باشد. دمبل را در کنار بدن بگیرید و کف دست رو به جلو و مچ دست در امتداد ساعد باشد (مچ دست نشکند). برای حفظ تعادل دست دیگر را در جلو عضله سینه بگیرید (مطابق عکس‌های بالا). این نقطه شروع حرکت است.\n"
      "حال با ایجاد فشار از عضله هدف دمبل را بدون اینکه سرشانه و یا بدن حرکتی به طرفین و یا عقب و جلو داشته باشند به بالا و داخل بدن هدایت کنید تا جاییکه مچ دست روبروی سرشانه طرف دیگر قرار بگیرد. این بخش فاز مثبت حرکت بوده و در این فاز عمل بازدم را انجام دهید.\n"
      "حال با کنترل کامل بر وزنه و اجرای صحیح حرکت وزنه را به نقطه شروع بازگردانید. این بخش فاز منفی حرکت بوده و در این فاز عمل دم را انجام دهید.\n"
      "بعد از انجام تکرار مورد نظر حالات دست را جابجا کرده و تعداد تکرار مورد نظر را با همین روش برای دست دیگر انجام دهید.\n"
      "حرکت را به تعداد مشخص شده در برنامه انجام دهید.\n",
  21: "اسکات\n"
      "نحوه انجام:\n"
      "روبه‌روی یک دیوار با فاصله ۱۰ سانتی‌متری دست به سینه بایستید؛\n"
      "سر و سینه‌تان را بالا نگه‌دارید؛\n"
      "حال، سعی کنید تا جایی پایین بروید؛\n"
      "تا حدی که ران‌هایتان هم‌سطح با زمین قرار گیرد؛\n"
      "مراقب باشید که زانوهایتان به دیوار نخورد؛\n"
      "سپس به‌آرامی بلند شوید؛\n"
      "اگر به دیوار برخورد نکردید و یا به سمت عقب نیفتادید، تبریک می‌گوییم؛\n"
      "چون شما یک اسکوات صحیح زدید!\n"
      "حالا همین اسکوات را بدون وزنه مقابل دیوار تمرین کنید؛\n"
      "تا جایی‌که بدون دیوار هم بتوانید این فرم را حفظ کنید.\n"
      "مدت زمان: 15 دقیقه\n"
      "قسمت‌های درگیر: ماهیچه‌های سینه‌ای، سه‌سر بازویی (پشت‌بازو)، و بخش جلویی دالی (سرشانه)",
  22: "لانژ\n"
      "نحوه انجام:\n"
      "برای شروع حرکت ابتدا طوری بایستید که کمر صاف ، سر در راستای ستون فقرات ، نگاه رو به جلو ، پا به اندازه عرض شانه باز و دست‌ها جلوی بدن باشد. این نقطه شروع حرکت است.\n"
      "اکنون یک پا را بدون آنکه بدن به طرفین حرکت کند به عقب (تقریبا یک قدم) آوزده بطوریکه کف پای جلو ثابت بر روی زمین بوده و زاویه زانوی عقب نود درجه شود و به زمین برخورد نکند. البته زاویه زانوی پای جلو نیر نود درجه شود. این بخش فاز منفی حرکت بوده و در این فاز عمل دم را انجام دهید.\n"
      "حال با ایجاد فشار از عضله هدف بدن را به بالا پرس کنید. این بخش فاز مثبت حرکت بوده و در این فاز عمل بازدم را انجام دهید.\n"
      "دقت کنید که در طول اجرای حرکت بدن در راستای عمود بالا و پایین رفته و به جلو و عقب و یا چپ و راست حرکت نداشته باشند. زانو نیز از پنجه جلوتر نیاید.\n"
      "حرکت را به همین منوال برای پای دیگر نیز انجام دهید.\n"
      "حرکت را به تعداد مشخص شده در برنامه انجام دهید.\n"
      "مدت زمان: 10 دقیقه\n"
      "قسمت‌های درگیر: ران و باسن",
  23: "ددلیفت\n"
      "نحوه انجام:\n"
      "هالتر با وزن مناسب را بردارید و بایستید. پاها را به اندازه عرض شانه باز کنید. میله را طوری بگیرید که کف دستانتان رو به بدنتان باشد و مچ و کمر و زانو را به صورت صاف نگه دارید.\n"
      "در نقطه شروع حرکت، مقداری زانوها را (حدود ۱۵ درجه) خم کنید هالتر را نزیک به بدن روی پاهای خود به سمت زین پایین ببرید.\n"
      "تا جایی بالاتنه را خم کنید که احساس کشیدگی در عضلات همسترینگ (پشت پا) را به همراه داشته باشید. (کمر و پشت را به صورت صاف و بدون خم شدن کمر  اجرا کنید. این بخش فاز منفی حرمت بوده و در این فاز عمل دم را انجام دهید.\n"
      "پس از مکثی کوتاه، با ریتم کنترل شده و (انقباض عضله پشت پا) به نقطه شروع حرکت باز گردید. این بخش فاز مثبت حرکت بوده و در این فاز عمل بازدم را انجام دهید.\n"
      "حرکت را به تعداد مشخص اجرا کنید.\n"
      "مدت زمان: 12 دقیقه\n"
      "قسمت‌های درگیر: لاتیسموس دورسی(زیر بغل)، متوازی الاضلاع، ذوزنقه، ساعد، میان تنه، همسترینگ (پشت پا)، تحت خاری و گرد بزرگ (ترس ماژور)",
  24: "لانژ پالس\n"
      "نحوه انجام:\n"
      "برای شروع حرکت ابتدا یک جلوی نیمکت با ارتفاع مناسب (به اندازه‌ای که تا زیر زانوی شما باشد) بایستید. فاصله تقریبا دو و نیم برابر ران خود از نیمکت باشد. دست‌ها را به کمر (برای حفظ بهتر تعادل) و یا در روبرو بگیرید. پا ها را به اندازه عرض شانه باز کنید و یک پا را به عقب برده و پنجه پا و یا روی پا را بر روی لبه نیمکت بگذارید. کمر صاف ، سر در راستای ستون فقرات و نگاه به جلو باشد. این نقطه شروع حرکت است.\n"
      "اکنون به پایین بروید تا جاییکه زاویه زانوی پای جلو نود درجه شود. این بخش فاز منفی حرکت است و در این فاز عمل دم را انجام دهید.\n"
      "حال با ایجاد فشار از عضله هدف بدن را به بالا پرس کنید. این بخش فاز مثبت حرکت بوده و در این فاز عمل بازدم را انجام دهید.\n"
      "دقت کنید که در طول اجرای حرکت بدن در راستای عمود بالا و پایین رفته و به جلو و عقب و یا چپ و راست حرکت نداشته باشند. زانو نیز از پنجه جلوتر نیاید.\n"
      "حرکت را به همین منوال برای پای دیگر نیز انجام دهید.\n"
      "حرکت را به تعداد مشخص شده در برنامه انجام دهید.\n"
      "مدت زمان: 10 دقیقه\n"
      "قسمت‌های درگیر: چهار سر ران (جلو پا)",
  25: "اسکات بلغاری\n"
      "نحوه انجام:\n"
      "برای انجام این حرکت ابتدا یک دستگاه اسکات بلغاری را آماده کنید و یک پا را به عقب روی دستگاه قرار دهید. همچنین می‌توانید از یک نیمکت نیز استفاده کنید. دسته‌های آن را بگیرید و با یک پا به عقب بروید تا پاهایتان زاویه‌ای حدوداً ۹۰ درجه باز شود. حالا به پایین بروید تا زانوی پاهای جلو به حداقل ۹۰ درجه برسد. در نهایت با قدرت پاهای عقبی به بالا برخیزید. حرکت را به تعداد تعیین شده تکرار کنید.\n"
      "مدت زمان: 15 دقیقه\n"
      "قسمت‌های درگیر: چهار سر ران (جلو پا)، همسترینگ (پشت پا)، سرینی (باسن)، core (میان تنه)",
  26: "پل باسن\n"
      "نحوه انجام:\n"
      "- ابتدا روی زمین یا تشک دراز بکشید.\n"
      "- زانوهای خود را خم کنید و کف پاهایتان را صاف روی زمین قرار دهید.\n"
      "- دست‌هایتان را در کنار بدن قرار داده و کف دست‌ها به سمت سقف باشد.\n"
      "- چند دقیقه در حالت پل بمانید و سپس بدنتان را رها کنید.\n"
      "نکات اجرایی:\n"
      "- فشار برای بلند کردن باسن نباید از کف پاشنه پا باشد. از عضلات باسن و ران‌های‌تان برای این کار استفاده کنید.\n"
      "- حین اجرای حرکات پل باسن، بیش از حد بدن‌تان را بالا ببرید و پل روی دریاچه درست نکنید.\n"
      "مدت زمان: 5 دقیقه\n"
      "قسمت‌های درگیر: باسن، ران‌ها، شکم",
  27: "وال اسکات\n"
      "نحوه انجام:\n"
      "- به دیوار تکیه دهید.\n"
      "- پاهای خود را به اندازه عرض شانه باز کنید و آن ها را کمی جلوتر از بدن‌تان قرار دهید.\n"
      "- به سمت پایین حرکت کنید، به گونه‌ای که گویا در حال نشستن روی صندلی هستید.\n"
      "- کمی در همین حالت بمانید و سپس دوباره حرکت را اجرا کنید.\n"
      "مدت زمان: 10 دقیقه\n"
      "قسمت‌های درگیر: چهارسر ران",
  28: "خم شدن به پهلو با دمبل\n"
      "نحوه انجام:\n"
      "- یک جفت دمبل سبک در دستانتان نگه دارید.\n"
      "- پاها به اندازه عرض شانه‌ها باز باشد.\n"
      "- دست‌ها به‌صورت کشیده کنار ران و بدن کاملا صاف باشد.\n"
      "- به چپ و سپس به راست مایل شوید.\n"
      "- حرکت را به‌آرامی انجام دهید.\n"
      "مدت زمان: 8 دقیقه\n"
      "قسمت‌های درگیر: شکم، فیله",
  29: "بالا بردن ساق پا با دمبل\n"
      "نحوه انجام:\n"
      "- یک عدد دمبل مناسب در دست بگیرید.\n"
      "- پاهایتان را کنار هم اندازه عرض شانه‌ها باز نگه دارید.\n"
      "- سعی کنید روی یک لبه کم‌ارتفاع و یا سکو بایستید تا کشش بیشتری را حین اجرای حرکت تجربه کنید.\n"
      "- سعی کنید روی پنجه‌هایتان بالا و پایین روید.\n"
      "مدت زمان: 7 دقیقه\n"
      "قسمت‌های درگیر: ساق",
  30: "جامپ اسکات\n"
      "نحوه انجام:\n"
      "- با قدم‌هایتان به اندازه عرض شانه‌هاتان باز ایستاده و دست‌هایتان را کنار بدن قرار دهید.\n"
      "- باسنتان را عقب ببرید، زانوهایتان را خم کنید، اسکوات بزنید و حالت نشسته بگیرید.\n"
      "- هنگام بالا آمدن بدنتان را بالا بکشید و بپرید. دست‌هایتان را پایین ببرید تا نیرو ایجاد کنید.\n"
      "- به‌آرامی روی زمین فرود بیایید.\n"
      "مدت زمان: 12 دقیقه\n"
      "قسمت‌های درگیر: پاها، باسن، شکم",
  31: "اسکات\n"
      "نحوه‌ی انجام:\n"
      "1- در حالت ایستاده یکی از پاها را جلوتر از دیگری قرار دهید و فاصله آنها را حدوداً به عرض شانه حفظ کنید. پشت را صاف و سر خود را بالا نگهدارید.\n"
      "2- زانوها را خم کنید تا جایی ران پای جلویی با زمین موازی شود و زانو درست بالای مچ قرار بگیرد. همیشه شانه‌ها، باسن، و زانوها و ساق‌های خود را صاف نگهدارید و اجازه ندهید زانو جلوتر از انگشتان پا حرکت کند. زانوی عقبی نباید هرگز با زمین برخورد کند.\n"
      "3- در حالی که پاشنه پای جلویی به زمین فشار می‌آورید، سعی کنید زانوی جلویی را صاف کنید و به موقعیت شروع حرکت باز گردید. بعد از اجرای تعداد تکرارهای مشخص برای یک پا، ست بعدی را برای پای مخالف اجرا کنید. زمانی که پائین می‌روید نفس بگیرید و حین بازگشت به بالا بازدم کنید.\n"
      "4- اگر تعادل ندارید، مطمئن شوید پاهای خود را از عرض به اندازه‌ی عرض شانه‌ها باز کرده باشید. اگر این فاصله رعایت شود تعادل بهتری خواهید داشت.\n"
      "مدت زمان: 15 دقیقه\n"
      "قسمت‌های درگیر: ماهیچه‌های سینه‌ای، سه‌سر بازویی (پشت‌بازو)، و بخش جلویی دالی (سرشانه)",
  32: "لانژ\n"
      "نحوه‌ی انجام:\n"
      "1- در حالت ایستاده یکی از پاها را جلوتر از دیگری قرار دهید و فاصله آنها را حدوداً به عرض شانه حفظ کنید. پشت را صاف و سر خود را بالا نگهدارید.\n"
      "2- زانوها را خم کنید تا جایی ران پای جلویی با زمین موازی شود و زانو درست بالای مچ قرار بگیرد. همیشه شانه‌ها، باسن، و زانوها و ساق‌های خود را صاف نگهدارید و اجازه ندهید زانو جلوتر از انگشتان پا حرکت کند. زانوی عقبی نباید هرگز با زمین برخورد کند.\n"
      "3- در حالی که پاشنه پای جلویی به زمین فشار می‌آورید، سعی کنید زانوی جلویی را صاف کنید و به موقعیت شروع حرکت باز گردید. بعد از اجرای تعداد تکرارهای مشخص برای یک پا، ست بعدی را برای پای مخالف اجرا کنید. زمانی که پائین می‌روید نفس بگیرید و حین بازگشت به بالا بازدم کنید.\n"
      "4- اگر تعادل ندارید، مطمئن شوید پاهای خود را از عرض به اندازه‌ی عرض شانه‌ها باز کرده باشید. اگر این فاصله رعایت شود تعادل بهتری خواهید داشت.\n"
      "مدت زمان: 20 دقیقه\n"
      "قسمت‌های درگیر: عضله چهار سر ران، عضله سرینی بزرگ، عضله همسترینگ، عضلات نزدیک کننده",

  33: "ددلیفت\n"
      "نحوه انجام:\n"
      "1. به سمت هالتر حرکت کنید: به سمت وزنه هالتر بروید، صاف بایستید و پاهای‌تان را تا نصفه در زیر هالتر بگذارید. سپس پاهای‌تان را به اندازه عرض لگن باز کنید و در زاویه ۱۵ درجه قرار دهید.\n"
      "2. میله هالتر را بگیرید: زانوها را کمی خم کنید، باسن خود را به سمت عقب ببرید و هالتر را با دست‌های‌تان بگیرید. دست‌های‌تان را باید به اندازه عرض شانه باز کنید.\n"
      "3. زانوهایتان را خم کنید: زانوهای‌تان را خم کنید تا زمانی‌که ساق پای‌تان با میله تماس پیدا کند. به هیچ‌وجه نباید بگذارید که میله از روی پاهای‌تان جابه‌جا شود.\n"
      "4. سینه‌تان را بالا بکشید: هالتر را با هر دو دست خود بگیرید. با بالا کشیدنِ سینه، کمر خود را صاف کنید. در حین انجام حرکت، حواس‌تان باشد که کمرتان را قوس ندهید.\n"
      "5. میله را بالا ببرید: نفس عمیقی بکشید و کمی حبس دم داشته باشید. سپس بلند شوید و با خودتان وزنه را هم بالا بکشید؛ هم‌زمان باسن و شانه‌های‌تان را به سمت بالا بکشید تا هالتر را از روی زمین بلند کنید.\n"
      "سعی کنید زمانی‌که میله را بالا می‌برید، هنوز میله با پاهایتان در تماس باشد. در حین انجام حرکت به سمت عقب خم نشوید و زانو و لگن‌تان را قفل کنید. وزنه را تا روی ران‌ها بالا بیاورید و سپس وزنه را روی زمین قرار دهید و دوباره از قدم اول، حرکت را شروع کنید.\n"
      "نحوه انجام حرکت ددلیفت دمبل:\n"
      "1. پاها هم عرض شانه ها باز باشند.\n"
      "2. دمبل ها نزدیک بدن باشند.\n"
      "3. نگاه رو به جلو باشد.\n"
      "4. باسن به سمت عقب متمایل شود.\n\n"
      "مدت زمان: 15 دقیقه\n"
      "قسمت‌های درگیر: عضلات پا، هیپ، مچ، سینه، ساق پا، فیله کمر",
  34: "پرس سینه\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: سینه\n"
      "نوع تمرین: قدرتی\n"
      "محل تمرین: باشگاه\n"
      "وسایل مورد نیاز: هالتر\n"
      "نحوه انجام حرکت:\n"
      "1. ابتدا بر روی یک میز صاف دراز بکشید.\n"
      "2. فاصله دست‌ها از هم در حد معمولی باشد، کمی بازتر از عرض شانه، به نحوی که در میانه‌ی حرکت، یک زاویه ۹۰ درجه بین بازو و ساعد ایجاد شود.\n"
      "3. هالتر را از روی دستگاه جدا کرده و آن را مقابل سینه خود بگیرید؛ این نقطه شروع حرکت است.\n"
      "4. از این نقطه نفس خود را داخل دهید (عمل دَم) و به‌آرامی هالتر را پایین بیاورید تا نقطه‌ای که هالتر به سینه شما برسد.\n"
      "5. پس از مکثی مختصر، در حین بالا بردن هالتر به نقطه شروع خود، عمل بازدم را انجام دهید؛ (نفستان را بیرون دهید) روی استفاده از ماهیچه سینه خود تمرکز کنید، در بالاترین نقطه ماهیچه سینه را منقبض کنید و پس از کمی مکث، به آرامی به پایین برگردید.\n"
      "6. هالتر باید در همه حالت در کنترل شما باشد.\n"
      "7. زمانی‌که تعداد مطلوب تکرار انجام دادید، هالتر را در جای خود بگذارید.\n"
      "مدت زمان: 20 دقیقه\n"
      "قسمت‌های درگیر: عضلات سینه، بازویی، دلتوئید خلفی",
  35: "پارو قایقی\n"
      "نام حرکت: زیربغل قایقی یا پارویی\n"
      "نوع حرکت: چندمفصله\n"
      "سطح تمرینی مورد نیاز: پیشرفته و مبتدی\n"
      "عضله هدف اصلی:عضلات پشت(پشتی بزرگ، ذوزنقه‌ای، دلتوئید خلفی و …)\n"
      "عضلات هدف فرعی: عضلات دوسربازویی\n"
      "نکات ایمنی:\n"
      "-حین اجرای حرکت کمر صاف و دارای قوس طبیعی باشد.\n"
      "-دست را از مفصل آرنج صاف صاف نکنید.\n"
      "تنوع:\n"
      "-می‌توانید برای اجرای حرکت قایقی از گیره‌های مختلف استفاده کنید.\n"
      "آموزش:\n"
      "-روی دستگاه بنشینید و پاهای خود را در محل مشخص شده دستگاه قرار دهید.\n"
      "-گیره دستگاه را با دست بگیرید و کمر خود را صاف کنید.\n"
      "-سپس با استفاده از عضلات پشت، گیره را با خم کردن دست‌ها از مفصل آرنج به شکم خود نزدیک کنید.\n"
      "-زمانی که عضلات پشت کاملا منقبض هستند مکث کوتاهی کنید سپس مجددا دست‌ها را صاف کنید تا کمی عضلات پشت تحت کشش قرار گیرند و همچنان بتوانید کمر خود را صاف نگه دارید.\n"
      "هدف از اجرای حرکت زیربغل قایقی:\n"
      "هدف اصلی از حرکت قایقی تقویت کل عضلات پشت است. اما شما می‌توانید با استفاده از گیرش‌های مختلف مثل گیرش خنثی و … فشارهای متفاوتی بر این عضلات وارد کنید. از طرفی به دلیل ایمنی نسبتا مناسب این دستگاه می‌توانید از وزنه‌های سنگین‌تر هم بهره ببرید.\n"
      "مدت زمان: 25 دقیقه\n"
      "قسمت‌های درگیر: عضلات پشت، دوسربازویی",

 36: "بارفیکس\n"
      "نحوه انجام:\n"
      "برای انجام بارفیکس ابتدا باید دست‌های‌تان را کمی بیشتر از اندازه عرض شانه باز کرده و سپس میله را بگیرید. یکی از نکات بسیار مهم در آموزش بارفیکس، نحوه قرارگیری دست‌ها است. وضعیت کف دست‌ها در گرفتن میله، سه حالت می‌تواند داشته باشد.\n"
      "1. اگر کف دست‌ها به سمت صورت شما باشد: عضلات جلو بازوی‌تان تقویت خواهد شد.\n"
      "2. اگر کف دست‌ها به طرف یکدیگر باشد: عضلات ساعد و پنجه تقویت می‌شوند.\n"
      "3. اگر کف دست‌ها به سمت بیرون باشد: عضلات زیر بغل‌تان تقویت خواهد شد.\n"
      "نکته مهم: به یاد داشته باشید که هرچقدر دست‌ها را بر روی میله بارفیکس به‌هم نزدیک‌تر کنید، عضلات سینه‌ای‌تان بیشتر درگیر می‌شود.\n"
      "وسیله ورزشی:\n"
      "وضعیت قرارگیری کتف و سینه:\n"
      "وقتی کتف را پایین می‌آورید و عضلات سینه را به سمت بالا می‌کشید، قبل از انجام حرکت بارفیکس، عضلات شانه و سینه‌تان را تنظیم کنید و سپس حرکت را انجام دهید. برای این کار کتف را پایین ببرید و عضلات سینه را به سمت بالا بکشید. بهتر است قبل از هربار تکرار حرکت، عضلات سینه و کتف خود را تنظیم کنید و سپس بدن خود را بالا بکشید.\n"
      "وضعیت قرارگیری زانوها:\n"
      "در حین انجام حرکت و آویزان شدن از میله، دست‌های‌تان را کاملاً در حالت باز و کشیده نگه‌دارید، ولی زانوهای‌تان را خم کنید. این نکته نیز در آموزش بارفیکس اهمیت زیادی دارد.\n",

  37: "شنا سوئدی\n"
      "سطح حرکت: متوسط\n"
      "عضلات درگیر: سینه\n"
      "نوع تمرین: قدرتی فانکشنال\n"
      "محل تمرین: باشگاه، خانه\n"
      "وسایل مورد نیاز: بدون وسیله\n"
      "نحوه انجام حرکت:\n"
      "1. روی زمین دراز بکشید و کف دست‌ها و نوک انگشتان پاهایتان را روی زمین قرار دهید.\n"
      "2. بالاتنه را در حالی‌که دست‌ها کشیده و در فاصله حدود ۹۰ سانتی‌متری یکدیگر قرار دارند، بالا نگه دارید.\n"
      "3. تا جایی‌که ناحیه سینه هنوز به زمین نرسیده، پایین بروید.\n"
      "4. بالاتنه را به نقطه شروع بازگردانده و ماهیچه سینه را منقبض کنید.\n"
      "5. پس از مکثی مختصر در بالاترین نقطه، به تعداد مورد نیاز حرکت را تکرار کنید.\n",

  38: "دیپ\n"
       "سطح حرکت: متوسط\n"
       "عضلات درگیر: پشت بازو\n"
       "نوع تمرین: قدرتی\n"
       "محل تمرین: باشگاه خانه\n"
       "وسایل مورد نیاز: نیمکت\n"
       "نحوه انجام حرکت:\n"
       "1. برای آغاز روی یک نیمکت نشسته و با دو دست خود یکی از لبه‌های آن را بگیرید و پاهای خود را در حالی‌که کف پاها روی زمین و زانوها خم هستند قرار دهید.\n"
       "2. زانوها نسبت به زمین زاویه ۹۰ درجه دارند.\n"
       "3. در حالی‌که کمر صاف و عضلات شکم منقبض هستند بالاتنه را معلق کنید، این محل شروع حرکت است.\n"
       "4. سپس نفس خود را داخل کشیده و آرنج‌ها را تا جایی که کشش کاملی را در عضلات پشت بازو احساس کنید، خم کنید.\n"
       "5. با استفاده از عضلات پشت بازو به محل شروع بازگردید.\n"
       "6. انقباض را برای یک لحظه حفظ کرده سپس حرکت را به تعداد لازم تکرار کنید؛ آرنج ها در تمام مدت تمرین باید به سمت پشت بدن اشاره کنند.\n",

  39: "تاب سوئدی\n"
       "سطح حرکت: متوسط\n"
       "عضلات درگیر: شکم، فیله سرشانه، باسن - سرینی\n"
       "نوع تمرین: قدرتی فانکشنال\n"
       "محل تمرین: باشگاه خانه\n"
       "وسایل مورد نیاز: دمبل\n"
       "نحوه انجام حرکت:\n"
       "1. یک دمبل مناسب انتخاب کنید و با دو دست از یک سر دمبل گرفته و جلوی بدن نگه دارید.\n"
       "2. پاها کمی بازتر از عرض شانه باشد و صاف بایستید.\n"
       "3. برای شروع به جلو خم شوید و از کمر حرکت کنید و پشت‌تان را کاملا صاف نگه دارید.\n"
       "4. دمبل را بین پاهای‌تان و عقب ببرید و سعی کنید به سمت جلو و بالا حرکت دهید و تا جلوی صورتتان بیاورید.\n"
       "5. دست‌ها کاملا در حین اجرای حرکت صاف باشد.\n",

  40: "پلانک\n"
       "نحوه انجام:\n"
       "روزی زمین به شکم دراز بکشید؛\n"
       "آرنج‌ها را در موازات شانه قرار دهید تا زاویه ۹۰ درجه بسازد؛\n"
       "پاهایتان را از قسمت پنجه روی زمین بگذارید؛\n"
       "دقت داشته باشید که پشت و کمر و باسنتان صاف و در یک راستا قرار بگیرد؛\n"
       "به مدت ۳۰ ثانیه در این حرکت بمانید؛\n"
       "البته زمان حرکت بستگی به توان بدنی‌تان دارد؛\n"
       "می‌توانید این تمرین را با گذاشتنِ کف دست‌ها روی زمین انجام دهید؛\n"
       "این نوع پلانک، حرکت پلانک سنتی نام دارد.\n",


};
