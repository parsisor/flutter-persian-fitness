import 'package:flutter/material.dart';
import 'Hub.dart';
import 'consts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'NotoNaskhArabicMedium'),
          bodyText2: TextStyle(fontFamily: 'NotoNaskhArabicMedium'),
          headline1: TextStyle(fontFamily: 'NotoNaskhArabicMedium'),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: avalie,
      body: Stack(
        children: [
          Image.asset(
            '../assets/splash-screen2.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 50,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: Text(
              'باشگاه',
              style: TextStyle(
                color: sefid,
                fontSize: 50,
                fontFamily: 'NotoNaskhArabicMedium',
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MainHub(),
                ));
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350, 90),
                backgroundColor: sanavie,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: sefid, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'شروع',
                style: TextStyle(
                  color: sefid,
                  fontSize: 20,
                  fontFamily: 'NotoNaskhArabicMedium',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
