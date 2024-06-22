import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Zerang/Theme/theme_provider.dart';
import '../Theme/consts.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('تنظیمات', style: TextStyle(color: sefid)),
          backgroundColor: avalie,
          iconTheme: IconThemeData(color: sefid),
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
                      value: themeProvider.themeData.brightness == Brightness.dark,
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
            ],
          ),
        ),
      ),
    );
  }
}
