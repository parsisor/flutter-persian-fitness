import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Zerang/Theme/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('تنظیمات' ,style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Divider(),
              
              Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) {
                  return ListTile(
                    title: Text('تغییر تم'),
                    trailing: Switch(
                      value:
                          themeProvider.themeData.brightness == Brightness.dark,
                      onChanged: (value) {
                        Future.microtask(() {
                          themeProvider.toggleTheme();
                        });
                      },
                    ),
                    onTap: () {
                      Future.microtask(() {
                        themeProvider.toggleTheme();
                      });
                    },
                  );
                },
              ),
              Divider(),
              
              ListTile(
                title: Text('تنظیمات اعلان‌ها'),
                onTap: () {
                  
                },
              ),
              Divider(),
              
              ListTile(
                title: Text('تغییر زبان'),
                onTap: () {
                  
                },
              ),
              Divider(),
              
              ListTile(
                title: Text('ارتباط با ما'),
                onTap: () {
                  showAboutUsDialog(context);
                },
              ),
              Divider(),
              
              ListTile(
                title: Text('درباره ما'),
                onTap: () {
                  showContactUsDialog(context);
                },
              ),
              Divider(),
              
              ListTile(
                title: Text('خروج از حساب کاربری'),
                onTap: () {
                  
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

 void showContactUsDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('ارتباط با ما'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/vectors/images_11zon.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 16),
            
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: Text('بستن'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


  void showAboutUsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ارتباط با ما'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
              'assets/vectors/images_11zon.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.fill,
            ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('بستن'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
