import 'package:flutter/material.dart';

class LevelTestPage extends StatefulWidget {
  @override
  _LevelTestPageState createState() => _LevelTestPageState();
}

class _LevelTestPageState extends State<LevelTestPage> {
  String yesText = 'بله';
  String noText = 'خیر';

  void _swapOptions() {
    setState(() {
      String temp = yesText;
      yesText = noText;
      noText = temp;
    });
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('آلرت'),
          content: Text('میدونستم!' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 50 ),),
          actions: <Widget>[
            TextButton(
              child: Text('باشه'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تست سطح ورزش'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'آیا شما گی هستید؟',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _swapOptions();
                    if (yesText == 'خیر') {
                      _showAlertDialog();
                    }
                  },
                  child: Text(yesText),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _swapOptions();
                  },
                  child: Text(noText),
                ),
              ],
            ),
            SizedBox(height: 20),
          
          ],
        ),
      ),
    );
  }
}
