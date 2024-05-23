import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Zerang/sign_in/LoginPage.dart';
import 'package:Zerang/sign_in/PasswordRecoveryPage.dart';


class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  String? _nameErrorText;
  String? _emailErrorText;
  String? _weightErrorText;
  String? _heightErrorText;

  @override
  void dispose() {
    _passController.dispose();
    _emailController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  bool _validateInput() {
    bool isValid = true;
    setState(() {
      _nameErrorText = null;
      _emailErrorText = null;
      _weightErrorText = null;
      _heightErrorText = null;
    });

    final String name = _passController.text;
    final String weight = _weightController.text;
    final String height = _heightController.text;
    final String email = _emailController.text;

    if (name.isEmpty) {
      setState(() {
        _nameErrorText = "لطفا نام خود را وارد کنید";
      });
      isValid = false;
    }
    if (email.isEmpty) {
      setState(() {
        _emailErrorText = "لطفا پست الکترونیک خود را وارد کنید";
      });
      isValid = false;
    }
    if (weight.isEmpty || int.tryParse(weight) == null) {
      setState(() {
        _weightErrorText = "وزن باید به صورت عدد وارد شود";
      });
      isValid = false;
    }
    if (height.isEmpty || int.tryParse(height) == null) {
      setState(() {
        _heightErrorText = "قد باید به صورت عدد وارد شود";
      });
      isValid = false;
    }
    return isValid;
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('خطا'),
          content: Text(message),
          actions: [
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

  void _signUp() async {
    if (!_validateInput()) {
      _showErrorDialog('لطفا اطلاعات خود را به درستی وارد کنید.');
      return;
    }

    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passController.text,
      );
      _showErrorDialog('ثبت‌نام با موفقیت انجام شد');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        _showErrorDialog('گذرواژه خیلی ضعیف است');
      } else if (e.code == 'email-already-in-use') {
        _showErrorDialog('این ایمیل قبلا ثبت شده است');
      } else {
        _showErrorDialog('خطایی رخ داد: ${e.message}');
      }
    } catch (e) {
      _showErrorDialog('خطایی رخ داد: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 40),
                    Center(
                      child: Text(
                        'ثبت نام',
                        style: TextStyle(
                          fontFamily: 'Vazir',
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    _buildTextField(
                      controller: _emailController,
                      label: 'پست الکترونیک خود را وارد کنید',
                      errorText: _emailErrorText,
                    ),
                    SizedBox(height: 20),
                    _buildTextField(
                      controller: _passController,
                      label: 'گذرواژه خود را وارد کنید',
                      errorText: _nameErrorText,
                    ),
                    SizedBox(height: 20),
                    _buildTextField(
                      controller: _weightController,
                      label: 'وزن خود را وارد کنید (کیلوگرم)',
                      errorText: _weightErrorText,
                      inputType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    SizedBox(height: 20),
                    _buildTextField(
                      controller: _heightController,
                      label: 'قد خود را وارد کنید (سانتی‌متر)',
                      errorText: _heightErrorText,
                      inputType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: _signUp,
                      child: Text('ثبت نام', style: TextStyle(fontFamily: 'Vazir', color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text('ورود به حساب کاربری', style: TextStyle(fontFamily: 'Vazir', color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PasswordRecoveryPage()),
                        );
                      },
                      child: Text('بازیابی گذرواژه', style: TextStyle(fontFamily: 'Vazir', color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    String? errorText,
    TextInputType inputType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
  }) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        errorText: errorText,
      ),
      style: TextStyle(color: Colors.white),
      textAlign: TextAlign.right,
    );
  }
}
