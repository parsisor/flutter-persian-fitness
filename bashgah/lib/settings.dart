import 'package:flutter/material.dart';
import 'consts.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تنظیمات', style: TextStyle(color: sefid)),
        backgroundColor: avalie,
        iconTheme: IconThemeData(color: sefid),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('تغییر رنگ پس زمینه'),
              onTap: () {

              },
            ),
            Divider(),
            ListTile(
              title: Text('تغییر رنگ متن'),
              onTap: () {

              },
            ),
            Divider(),
            ListTile(
              title: Text('تغییر فونت'),
              onTap: () {
              
              },
            ),
            Divider(),
            ListTile(
              title: Text('تغییر تم'),
              onTap: () {
  
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}
