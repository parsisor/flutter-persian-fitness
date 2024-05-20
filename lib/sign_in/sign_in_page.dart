import 'package:flutter/material.dart';



class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _signIn() {
    final String name = _nameController.text;
    print("Signed in as $name");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ثبت نام', style: TextStyle(fontFamily: 'Vazir')),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl, 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'آیدی خود را وارد کنید',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.right, 
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _signIn,
                child: Text('ثبت نام', style: TextStyle(fontFamily: 'Vazir')),
                style: ElevatedButton.styleFrom(
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
