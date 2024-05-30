import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';

@override
class Article {
  final String title;
  final String content;
  final String sub;

  Article({required this.title, required this.content, required this.sub});

  factory Article.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return Article(
      title: data['title'] ?? '',
      content: data['content'] ?? '',
      sub: data['sub'] ?? '',
    );
  }
}

class ArticlePage extends StatefulWidget {
  @override
  _ArticlePageState createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  StreamSubscription? connectivitySubscription;
  bool isConnected = true;

  @override
  void initState() {
    super.initState();
    connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      setState(() {
        isConnected = (result != ConnectivityResult.none);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    connectivitySubscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مقالات'),
        centerTitle: true,
      ),
      body: isConnected ? buildOnlineContent() : buildOfflineContent(),
    );
  }

  Widget buildOnlineContent() {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('articles').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        final articles = snapshot.data!.docs
            .map((doc) => Article.fromFirestore(doc))
            .toList();

        return ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(articles[index].title,
                      textDirection: TextDirection.rtl),
                  subtitle: Text(articles[index].sub,
                      textDirection: TextDirection.rtl),
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
        );
      },
    );
  }

  Widget buildOfflineContent() {
    final List<Article> offlineArticles = [
      Article(
        title: 'خوبی های ورزش',
        content:
            "ورزش، یکی از عوامل مهمی است که به بهبود کیفیت زندگی انسان کمک می‌کند. از زمان‌های قدیم، انسان‌ها به ورزش و فعالیت‌های بدنی پرداخته‌اند و اثرات مثبت آن را تجربه کرده‌اند. ورزش نه تنها برای سلامتی بدنی بلکه برای روحی و روانی هم اهمیت دارد. در این مقاله، به بررسی خوبی های ورزش و اهمیت آن برای سلامتی انسان می‌پردازیم.\n\n"
            "۱. افزایش سلامتی بدنی:\n"
            "ورزش به افزایش سلامتی بدنی کمک می‌کند. فعالیت‌های ورزشی مانند دویدن، شنا، پیاده روی و ورزش‌های مقاومتی باعث افزایش قدرت عضلات، افزایش استقامت و افزایش تحمل بدن می‌شود. همچنین، ورزش به بهبود عملکرد قلب و عروق، کاهش فشار خون، کنترل وزن و کاهش خطر بروز بیماری‌های مزمن مانند دیابت و بیماری‌های قلبی عروقی کمک می‌کند.\n\n",
        sub: "مقاله ای در مورد فواید ورزش",
      ),
      Article(
        title: 'تغذیه ی مناسب برای بعد از ورزش',
        content:
            "پس از انجام ورزش، بدن به نیازهای مختلفی نیاز دارد تا بتواند بهترین عملکرد را از خود نشان دهد و بازسازی و بازگردانی عضلات را بهبود بخشد. برای این منظور، مواد غذایی مناسب و مقدار مناسبی از انرژی، پروتئین، کربوهیدرات، و مواد معدنی و ویتامین‌ها مورد نیاز است. در زیر به بررسی این عناصر تغذیه‌ای پس از ورزش می‌پردازیم:\n\n"
            "پروتئین:\n"
            "پروتئین یکی از مهمترین عناصر تغذیه‌ای برای بازسازی عضلات و بهبود عملکرد بدنی پس از ورزش است. مصرف پروتئین پس از ورزش کمک می‌کند تا عضلات آسیب دیده ترمیم شود و به رشد و تقویت آنها کمک کند. منابع خوبی از پروتئین شامل گوشت مرغ، گوشت قرمز، ماهی، تخم مرغ، لبنیات (مانند شیر، کره، پنیر) و محصولات سویا می‌باشند.\n\n",
        sub: "مقاله ای در مورد تغذیه ی مناسب بعد از ورزش",
      ),
      Article(
        title: 'معجزه ی خواب',
        content: "راهکارهای بهبود وضعیت خواب:\n\n"
            "۱. تعیین یک الگوی خواب منظم: برنامه‌ریزی برای خواب به موقع و بیدار شدن در زمان‌های مشخص، الگوی خواب شما را تنظیم می‌کند و به بدنتان می‌آموزد که در زمان مناسبی خوابیده و بیدار شود. این کمک می‌کند تا بهترین بهره را از خواب ببرید و از احساس خستگی زائد در طول روز جلوگیری شود.\n\n",
        sub: "مقاله ای در مورد اهمیت خواب",
      ),
    ];

    return ListView.builder(
      itemCount: offlineArticles.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(offlineArticles[index].title,
                  textDirection: TextDirection.rtl),
              subtitle: Text(offlineArticles[index].sub,
                  textDirection: TextDirection.rtl),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ArticleDetailPage(article: offlineArticles[index]),
                  ),
                );
              },
            ),
            Divider(),
          ],
        );
      },
    );
  }
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
