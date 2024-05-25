import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
  class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مقالات'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('articles').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          final articles = snapshot.data!.docs.map((doc) => Article.fromFirestore(doc)).toList();

          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(articles[index].title, textDirection: TextDirection.rtl),
                    subtitle: Text(articles[index].sub, textDirection: TextDirection.rtl),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArticleDetailPage(article: articles[index]),
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
      ),
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