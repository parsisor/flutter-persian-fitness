import 'package:flutter/material.dart';

class Brain_app extends StatelessWidget {
  const Brain_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404 Error' ,  style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.bold,)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.error_outline,
              size: 100,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Text(
              'Error 404',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Page not found',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
