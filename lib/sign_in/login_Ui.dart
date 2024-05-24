import 'package:Zerang/code_assets.dart/consts.dart';
import 'package:Zerang/sign_in/LoginPage.dart';
import 'package:flutter/material.dart';

class Login_ui extends StatefulWidget {
  const Login_ui({super.key});

  @override
  State<Login_ui> createState() => _SignInState();
}

class _SignInState extends State<Login_ui> with SingleTickerProviderStateMixin {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isHovering = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          
          leading: IconButton(
            
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
            
          )
          ),
        
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      child: Image.asset(
                        "assets/gifs/login.gif",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ورود",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    _buildTextField(
                      controller: _emailController,
                      label: "آدرس ایمیل",
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    _buildTextField(
                      controller: _passwordController,
                      label: "رمز عبور",
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // نمیدونم کلیک بشه چی میشه
                      },
                      child: Text(
                        "ورود",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHovering = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovering = false;
                        });
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      LoginPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                const begin = Offset(1.0, 0.0);
                                const end = Offset.zero;
                                const curve = Curves.ease;

                                var tween = Tween(begin: begin, end: end)
                                    .chain(CurveTween(curve: curve));

                                return SlideTransition(
                                  position: animation.drive(tween),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: AnimatedDefaultTextStyle(
                          style: TextStyle(
                            color: isHovering
                                ? selectedbutton_color
                                : Colors.blueAccent,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                          duration: Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                          child: Text(
                            "رمز خود را فراموش کردم",
                          ),
                        ),
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
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(right: 24.0),
        labelText: label,
        prefixIcon: Icon(icon),
        prefixIconConstraints: BoxConstraints(minWidth: 80, minHeight: 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      textAlign: TextAlign.right,
    );
  }
}
