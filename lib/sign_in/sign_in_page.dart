import 'package:Zerang/code_assets.dart/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  String _userInfo = "";
  String? _errorText;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  bool _validateInput() {
    final String name = _nameController.text;
    final String weight = _weightController.text;
    final String height = _heightController.text;
    final String email = _emailController.text;
    if (name.isEmpty) {
      setState(() {
        _errorText = "لطفا نام خود را وارد کنید";
      });
      return false;
    }
    if (email.isEmpty) {
      setState(() {
        _errorText = "لطفا پست الکترونیک خود را وارد کنید";
      });
      return false;
    }
    if (weight.isEmpty || int.tryParse(weight) == null) {
      setState(() {
        _errorText = "وزن باید به صورت عدد وارد شود";
      });
      return false;
    }
    if (height.isEmpty || int.tryParse(height) == null) {
      setState(() {
        _errorText = "قد باید به صورت عدد وارد شود";
      });
      return false;
    }
    setState(() {
      _errorText = null;
    });
    return true;
  }

  void _signIn() {
    if (_validateInput()) {
      final String name = _nameController.text;
      final String weight = _weightController.text;
      final String height = _heightController.text;
      final String email = _emailController.text;
      setState(() {
        _userInfo = 'نام: $name\nوزن: $weight کیلوگرم\nقد: $height سانتی‌متر';
      });
      print("Signed in as $name, Weight: $weight kg, Height: $height cm");
    }
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
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'پست الکترونیک خود را وارد کنید',
                  border: OutlineInputBorder(),
                  errorText: _errorText,
                ),
                textAlign: TextAlign.right,
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'نام کاربری خود را وارد کنید',
                  border: OutlineInputBorder(),
                  errorText: _errorText,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20),
              TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  labelText: 'وزن خود را وارد کنید (کیلوگرم)',
                  border: OutlineInputBorder(),
                  errorText: _errorText,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20),
              TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  labelText: 'قد خود را وارد کنید (سانتی‌متر)',
                  border: OutlineInputBorder(),
                  errorText: _errorText,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _signIn,
                child: Text('ثبت نام', style: TextStyle(fontFamily: 'Vazir', color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              if (_userInfo.isNotEmpty)
                Text(
                  _userInfo,
                  style: TextStyle(
                    fontSize: 16,
                    color: button_color,
                    fontFamily: 'Vazir',
                  ),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }
}