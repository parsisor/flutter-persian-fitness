import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:zerang/sign_in/loginPage.dart';
import 'package:zerang/sign_in/passwordRecoveryPage.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

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
          title: const Text('خطا'),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text('باشه'),
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

      
      await FirebaseFirestore.instance.collection('users').doc(credential.user!.uid).set({
        'email': _emailController.text,
        'weight': _weightController.text,
        'height': _heightController.text,
      });

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

  Future<void> _fetchUserData() async {
  int retryCount = 0;
  const maxRetries = 5;
  const retryDelay = Duration(seconds: 2);

  while (retryCount < maxRetries) {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        DocumentSnapshot userData = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
        if (userData.exists) {
          Map<String, dynamic>? data = userData.data() as Map<String, dynamic>?;
          String email = data?['email'] ?? 'N/A';
          String weight = data?['weight'] ?? 'N/A';
          String height = data?['height'] ?? 'N/A';
          _showErrorDialog('User Data:\nEmail: $email\nWeight: $weight\nHeight: $height');
        } else {
          _showErrorDialog('No user data found');
        }
      } else {
        _showErrorDialog('No user is currently signed in');
      }
      break; 
    } catch (e) {
      if (retryCount < maxRetries - 1) {
        await Future.delayed(retryDelay);
        retryCount++;
      } else {
        _showErrorDialog('Failed to fetch user data: $e');
        break;
      }
    }
  }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(height: 40),
                    const Center(
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
                    const SizedBox(height: 40),
                    _buildTextField(
                      controller: _emailController,
                      label: 'پست الکترونیک خود را وارد کنید',
                      errorText: _emailErrorText,
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                      controller: _passController,
                      label: 'گذرواژه خود را وارد کنید',
                      errorText: _nameErrorText,
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                      controller: _weightController,
                      label: 'وزن خود را وارد کنید (کیلوگرم)',
                      errorText: _weightErrorText,
                      inputType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    const SizedBox(height: 20),
                    _buildTextField(
                      controller: _heightController,
                      label: 'قد خود را وارد کنید (سانتی‌متر)',
                      errorText: _heightErrorText,
                      inputType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: _signUp,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                      child: const Text('ثبت نام', style: TextStyle(fontFamily: 'Vazir', color: Colors.white)),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _fetchUserData,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                      child: const Text('دریافت اطلاعات کاربر', style: TextStyle(fontFamily: 'Vazir', color: Colors.white)),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                      child: const Text('ورود به حساب کاربری', style: TextStyle(fontFamily: 'Vazir', color: Colors.white)),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PasswordRecoveryPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Colors.deepPurple,
                      ),
                      child: const Text('بازیابی گذرواژه', style: TextStyle(fontFamily: 'Vazir', color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );}
    
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
        labelStyle: const TextStyle(color: Colors.white),
        filled: true,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        errorText: errorText,
      ),
      style: const TextStyle(color: Colors.white),
      textAlign: TextAlign.right,
    );
  }
