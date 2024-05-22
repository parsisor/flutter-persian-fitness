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
  String? _nameErrorText;
  String? _emailErrorText;
  String? _weightErrorText;
  String? _heightErrorText;

  @override
  void dispose() {
    _nameController.dispose();
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

    final String name = _nameController.text;
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 80),
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
                  SizedBox(height: 20),
                  _buildTextField(
                    controller: _emailController,
                    label: 'پست الکترونیک خود را وارد کنید',
                    errorText: _emailErrorText,
                  ),
                  SizedBox(height: 20),
                  _buildTextField(
                    controller: _nameController,
                    label: 'نام کاربری خود را وارد کنید',
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
                    onPressed: _signIn,
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
                  if (_userInfo.isNotEmpty)
                    Text(
                      _userInfo,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Vazir',
                      ),
                      textAlign: TextAlign.center,
                    ),
                ],
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
