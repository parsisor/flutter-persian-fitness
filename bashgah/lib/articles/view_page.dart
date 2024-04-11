import 'package:flutter/material.dart';

void main() {
  runApp(ArticleApp());
}

class ArticleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Article App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ArticlePage(),
    );
  }
}

class ArticlePage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'خوبی های ورزش',
      content: "ورزش، یکی از عوامل مهمی است که به بهبود کیفیت زندگی انسان کمک می‌کند. از زمان‌های قدیم، انسان‌ها به ورزش و فعالیت‌های بدنی پرداخته‌اند و اثرات مثبت آن را تجربه کرده‌اند. ورزش نه تنها برای سلامتی بدنی بلکه برای روحی و روانی هم اهمیت دارد. در این مقاله، به بررسی خوبی های ورزش و اهمیت آن برای سلامتی انسان می‌پردازیم.\n\n"
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
      title: 'Dart Basics',
      content: 'Introduction to Dart programming language.',
      sub: "مقاله ای در مورد مبانی Dart",
    ),
    Article(
      title: 'State Management in Flutter',
      content: 'Explore various state management techniques in Flutter.',
      sub: "مقاله ای در مورد مدیریت وضعیت در فلاتر",
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
          return ListTile(
            title: Text(articles[index].title),
            subtitle: Text(articles[index].sub),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ArticleDetailPage(article: articles[index]),
                ),
              );
            },
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
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              article.title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              article.content,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
