import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'خوبی های ورزش',
      content:
          "ورزش، یکی از عوامل مهمی است که به بهبود کیفیت زندگی انسان کمک می‌کند. از زمان‌های قدیم، انسان‌ها به ورزش و فعالیت‌های بدنی پرداخته‌اند و اثرات مثبت آن را تجربه کرده‌اند. ورزش نه تنها برای سلامتی بدنی بلکه برای روحی و روانی هم اهمیت دارد. در این مقاله، به بررسی خوبی های ورزش و اهمیت آن برای سلامتی انسان می‌پردازیم.\n\n"
          "۱. افزایش سلامتی بدنی:\n"
          "ورزش به افزایش سلامتی بدنی کمک می‌کند. فعالیت‌های ورزشی مانند دویدن، شنا، پیاده روی و ورزش‌های مقاومتی باعث افزایش قدرت عضلات، افزایش استقامت و افزایش تحمل بدن می‌شود. همچنین، ورزش به بهبود عملکرد قلب و عروق، کاهش فشار خون، کنترل وزن و کاهش خطر بروز بیماری‌های مزمن مانند دیابت و بیماری‌های قلبی عروقی کمک می‌کند.\n\n"
          "۲. افزایش روحیه و انرژی:\n"
          "ورزش نه تنها برای سلامتی بدنی مفید است بلکه برای روحیه و انرژی نیز موثر است. ورزش باعث ترشح هورمون‌های خوشحالی مانند اندورفین می‌شود که بهبود خلق و خو و افزایش انرژی را به همراه دارد. فعالیت‌های ورزشی می‌توانند استرس و اضطراب را کاهش داده و به افراد کمک کنند تا به طور عمومی احساس بهتری داشته باشند.\n\n"
          "۳. افزایش تمرکز و توجه:\n"
          "ورزش همچنین به بهبود تمرکز و توجه کمک می‌کند. انجام فعالیت‌های ورزشی باعث تخلیه ذهن از فکرها و استراحت ذهنی می‌شود که در نتیجه توانایی تمرکز و توجه بهبود می‌یابد. این اثرات مثبت ورزش بر روی قدرت ذهنی می‌تواند در انجام وظایف روزمره و حتی در کارهای تحصیلی و شغلی موثر باشد.\n\n"
          "۴. افزایش اعتماد به نفس:\n"
          "انجام فعالیت‌های ورزشی و دستاوردهای حاصل از آن می‌تواند باعث افزایش اعتماد به نفس شود. هر چه فرد بیشتر ورزش کند و پیشرفت بیشتری کسب کند، اعتماد به نفس او بهبود می‌یابد. این اعتماد به نفس به افراد کمک می‌کند تا به بهترین نسخه خود برسند و با چالش‌ها و موفقیت‌های زندگی بهتر کنار بیایند.\n\n"
          "۵. ایجاد روابط اجتماعی:\n"
          "ورزش فرصتی برای برقراری ارتباط اجتماعی و ایجاد روابط دوستانه فراهم می‌کند. شرکت در تیم‌های ورزشی، حضور در کلاس‌های ورزشی یا شرکت در رویدادهای ورزشی می‌تواند باعث ایجاد دوستی‌های جدید و افزایش ارتباطات اجتماعی شود که این امر برای روحیه و احساس تعلق به جامعه بسیار مفید است.\n\n"
          "در نتیجه، ورزش به عنوان یک فعالیت بدنی بسیار ارزشمند و مفید است که اثرات مثبت آن بر روحیه، سلامتی و کیفیت زندگی انسان بسیار چشمگیر است. بنابراین، تشویق به انجام فعالیت‌های ورزشی و توجه به آن از اهمیت بسزایی برخوردار است.",
      sub: "مقاله ای در مورد فواید ورزش",
    ),
    Article(
      title: 'تغذیه ی مناسب برای بعد از ورزش',
      content:
          "پس از انجام ورزش، بدن به نیازهای مختلفی نیاز دارد تا بتواند بهترین عملکرد را از خود نشان دهد و بازسازی و بازگردانی عضلات را بهبود بخشد. برای این منظور، مواد غذایی مناسب و مقدار مناسبی از انرژی، پروتئین، کربوهیدرات، و مواد معدنی و ویتامین‌ها مورد نیاز است. در زیر به بررسی این عناصر تغذیه‌ای پس از ورزش می‌پردازیم:\n\n"
          "پروتئین:\n"
          "پروتئین یکی از مهمترین عناصر تغذیه‌ای برای بازسازی عضلات و بهبود عملکرد بدنی پس از ورزش است. مصرف پروتئین پس از ورزش کمک می‌کند تا عضلات آسیب دیده ترمیم شود و به رشد و تقویت آنها کمک کند. منابع خوبی از پروتئین شامل گوشت مرغ، گوشت قرمز، ماهی، تخم مرغ، لبنیات (مانند شیر، کره، پنیر) و محصولات سویا می‌باشند.\n\n"
          "کربوهیدرات:\n"
          "کربوهیدرات نیز یک منبع اصلی انرژی برای بدن است و مصرف آن پس از ورزش می‌تواند انرژی مورد نیاز بدن را تامین کند و از خستگی و خستگی جلوگیری کند. مصرف کربوهیدرات پس از ورزش می‌تواند سطح گلیکوژن عضلات را بازسازی کند. منابع خوبی از کربوهیدرات شامل میوه‌ها، سبزیجات، نان، ماکارونی، برنج و غلات می‌باشند.\n\n"
          "مایعات:\n"
          "مصرف مایعات پس از ورزش بسیار مهم است تا بدن را از از دست دادن آب و مواد معدنی که در طی فعالیت‌های ورزشی از بدن خارج می‌شود، جبران کند. آب، انواع نوشیدنی‌های الکترولیتی، مواد معدنی غنی شده و نوشابه‌های ورزشی می‌توانند گزینه‌های مناسبی برای بازسازی مایعات و مواد معدنی باشند.\n\n"
          "مواد معدنی و ویتامین‌ها:\n"
          "مصرف مواد معدنی مانند پتاسیم، مگنز، کلسیم و ویتامین‌ها (مانند ویتامین C و ویتامین E) نیز بعد از ورزش بسیار حیاتی است. این مواد معدنی و ویتامین‌ها به بازسازی عضلات کمک می‌کنند، التهابات را کاهش می‌دهند و سیستم ایمنی را تقویت می‌کنند. منابع غنی از این مواد شامل میوه‌ها، سبزیجات، مغزهای خشک، ماهی، مرغ، تخم مرغ و محصولات لبنیات می‌باشند.\n\n"
          "نتیجه:\n"
          "تغذیه مناسب پس از ورزش باعث تامین انرژی، بازسازی عضلات، و تقویت عملکرد بدن می‌شود. بنابراین، مصرف مواد غذایی مناسب و متعادل پس از ورزش از اهمیت بسزایی برخوردار است تا بتوان به بهترین نتایج و عملکرد بدنی رسید. به یاد داشته باشید که تنها ورزش کافی نیست، تغذیه مناسب هم بسیار مهم است.\n\n",
      sub: "مقاله ای در مورد تغذیه ی مناسب بعد از ورزش",
    ),
    Article(
      title: 'معجزه ی خواب',
      content: "راهکارهای بهبود وضعیت خواب:\n\n"
          "۱. تعیین یک الگوی خواب منظم: برنامه‌ریزی برای خواب به موقع و بیدار شدن در زمان‌های مشخص، الگوی خواب شما را تنظیم می‌کند و به بدنتان می‌آموزد که در زمان مناسبی خوابیده و بیدار شود. این کمک می‌کند تا بهترین بهره را از خواب ببرید و از احساس خستگی زائد در طول روز جلوگیری شود.\n\n"
          "۲. فضای خواب بهینه: محیط خواب باید آرام و راحت باشد. از روشنایی‌های زیاد، صداهای مزاحم و دمای نامناسب پرهیز کنید. استفاده از پرده‌های تاریک کننده، استفاده از ماسک چشم و ایجاد سکوت می‌تواند بهبودی مهم در کیفیت خواب شما داشته باشد.\n\n"
          "۳. مراقبت از روتین قبل از خواب: فعالیت‌های آرام برای آماده‌سازی بدن و ذهن برای خواب می‌تواند مفید باشد. استفاده از روش‌های آرام‌بخش مانند خواندن یک کتاب، گوش دادن به موسیقی آرامش‌بخش یا انجام تمرینات تنفسی می‌تواند به شما کمک کند تا استرس را کاهش داده و به راحتی خواب بروید.\n\n"
          "۴. محدود کردن مصرف کافئین و الکل: مصرف زیاد کافئین و الکل می‌تواند تأثیرات منفی بر روی کیفیت خواب داشته باشد. تلاش کنید مصرف این مواد را در ساعات بعد از ظهر محدود کنید و در اوایل شب از آنها پرهیز کنید.\n\n"
          "۵. تمرین و ورزش منظم: فعالیت‌های ورزشی منظم می‌توانند بهبود قابل توجهی در کیفیت خواب شما به همراه داشته باشند. اما توجه داشته باشید که ورزش در ساعات غیر از قبل از خواب می‌تواند بر خواب شما تأثیر منفی داشته باشد، بنابراین سعی کنید ورزش را در زمان‌های معینی انجام دهید که بر روی خواب شما تأثیر منفی نداشته باشد.\n\n",
      sub: "مقاله ای در مورد اهمیت خواب",
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Articles'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(articles[index].title, textDirection: TextDirection.rtl), // تغییر جهت متن به rtl
                subtitle: Text(articles[index].sub, textDirection: TextDirection.rtl), // تغییر جهت متن به rtl
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ArticleDetailPage(article: articles[index]),
                    ),
                  );
                },
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}



class Article {
  final String title;
  final String content;
  final String sub;

  Article({required this.title, required this.content, required this.sub});
}


class ArticleDetailPage extends StatelessWidget {
  final Article article;

  ArticleDetailPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Text(
                article.content,
                textDirection: TextDirection.rtl, 
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}