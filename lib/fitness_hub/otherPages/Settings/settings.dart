import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zerang/Theme/theme_provider.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'تنظیمات',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Divider(),
              Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) {
                  return ListTile(
                    title: const Text('تغییر تم'),
                    trailing: Switch(
                      value: themeProvider.themeData.brightness ==
                          Brightness.dark,
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
              
              const Divider(),
              ListTile(
                title: const Text('ارتباط با ما'),
                onTap: () {
                  showContactUsDialog(context);
                },
              ),
              const Divider(),
              ListTile(
                title: const Text('درباره ما'),
                onTap: () {
                  showAboutUsDialog(context);
                },
              ),
              const Divider(),
              
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
        return const ContactUsDialog();
      },
    );
  }

  void showAboutUsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AboutUsDialog();
      },
    );
  }
}

class ContactUsDialog extends StatelessWidget {
  const ContactUsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      title: const Center(
        child: Text(
          'ارتباط با ما',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            const Text(
              'به نام خدا',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'برای ارتباط با من میتوانید از راه های زیر استفاده کنید:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                const tel = 'tel:09361657082';
                if (await canLaunch(tel)) {
                  await launch(tel);
                } else {
                  throw 'Could not launch $tel';
                }
              },
              child: const Text(
                'تلفن: 09361657082',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                const email = 'mailto:amirhoosinn37@gmail.com';
                if (await canLaunch(email)) {
                  await launch(email);
                } else {
                  throw 'Could not launch $email';
                }
              },
              child: const Text(
                'ایمیل: amirhoosinn37@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'ID در پیام رسان ها: @doctorhoshmand',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Center(
          child: TextButton(
            child: const Text(
              'بستن',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}

class AboutUsDialog extends StatelessWidget {
  const AboutUsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      title: const Center(
        child: Text(
          'معرفی اپلیکیشن زرنگ',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            const Text(
              'من امیرحسین اسلامی هستم و \n'
              'اپلیکیشن زرنگ را به شما تقدیم میکنم.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                const url = 'https://rubika.ir/joing/GGCECCII0EFCWKYXXLKUMJHFHIAAMGAA';
                if (await canLaunchUrl(url as Uri)) {
                  await launchUrl(url as Uri);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: const Text(
                'برای اطلاعات بیشتر در مورد مسیر ساخت اپلیکیشن خود به این لینک مراجعه کنید',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'assets/App_Logo/Logo.jpg', // لینک تصویر مورد نظر
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Center(
          child: TextButton(
            child: const Text(
              'بستن',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ],
    );
  }
}
