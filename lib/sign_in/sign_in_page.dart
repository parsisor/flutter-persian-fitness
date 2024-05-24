import 'package:Zerang/code_assets.dart/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInPage_ui extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage_ui> {
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
      appBar: AppBar(
        title: Text('ثبت نام'),
        iconTheme: IconThemeData(color: sefid),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          children: [
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0) , color: button_color),
            )

          ],
          
        )

      ),
    );
  }
}



//   Widget _buildTextField({
//     required TextEditingController controller,
//     required String label,
//     String? errorText,
//     TextInputType inputType = TextInputType.text,
//     List<TextInputFormatter>? inputFormatters,
//   }) {
//     return TextField(
//       controller: controller,
//       keyboardType: inputType,
//       inputFormatters: inputFormatters,
//       decoration: InputDecoration(
//         labelText: label,
//         labelStyle: TextStyle(color: Colors.white),
//         filled: true,
//         fillColor: Colors.white.withOpacity(0.3),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30.0),
//           borderSide: BorderSide.none,
//         ),
//         errorText: errorText,
//       ),
//       style: TextStyle(color: Colors.white),
//       textAlign: TextAlign.right,
//     );
//   }
// }
