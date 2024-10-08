// ignore_for_file: use_build_context_synchronously

import 'package:zerang/Theme/consts.dart';
import 'package:zerang/fitness_hub/Hub.dart';
import 'package:zerang/sign_in/login_Ui.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lottie/lottie.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> with SingleTickerProviderStateMixin {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isHovering = false;
  bool isDeveloperHovering = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _signUp() async {
    if (!_formKey.currentState!.validate()) {
      return; 
    }

    final String username = _usernameController.text.trim();
    final String email = _emailController.text.trim();
    final String password = _passwordController.text.trim();

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'username': username,
        'email': email,
      });

      
      _showSuccessDialog();
    } on FirebaseAuthException catch (e) {
      String message;
      if (e.code == 'weak-password') {
        message = 'رمز عبور ضعیف است';
      } else if (e.code == 'email-already-in-use') {
        message = 'این ایمیل قبلاً ثبت شده است';
      } else {
        message = 'خطایی رخ داد. دوباره تلاش کنید';
      }
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(message),
      ));
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('خطایی رخ داد. دوباره تلاش کنید'),
      ));
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('تبریک!', textAlign: TextAlign.center),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'assets/gifs/lotties/Login.json',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              const Text('ثبت نام شما با موفقیت انجام شد.',
                  textAlign: TextAlign.center),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('باشه'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ApplicationHub()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 150,
                        child: Lottie.asset(
                          "assets/gifs/lotties/sign_in.json",
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "ثبت نام",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildTextField(
                        controller: _usernameController,
                        label: "نام کاربری",
                        icon: Icons.person,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'لطفاً نام کاربری را وارد کنید';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildTextField(
                        controller: _emailController,
                        label: "آدرس ایمیل",
                        icon: Icons.email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'لطفاً آدرس ایمیل را وارد کنید';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'لطفاً یک آدرس ایمیل معتبر وارد کنید';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      _buildTextField(
                        controller: _passwordController,
                        label: "رمز عبور",
                        icon: Icons.lock,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'لطفاً رمز عبور را وارد کنید';
                          }
                          if (value.length < 6) {
                            return 'رمز عبور باید حداقل ۶ کاراکتر باشد';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: _signUp,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                        ),
                        child: const Text(
                          "ثبت نام",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
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
                                        const Login_ui(),
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
                                  ? selectedButtonColor
                                  : Colors.blueAccent,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            child: const Text(
                              "از قبل اکانت دارم/میخواهم ورود کنم",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            isDeveloperHovering = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            isDeveloperHovering = false;
                          });
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        const ApplicationHub(),
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
                              color: isDeveloperHovering
                                  ? selectedButtonColor
                                  : Colors.blueAccent,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                            ),
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            child: const Text(
                              "ورود به عنوان دولوپر",
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
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    required String? Function(String?) validator,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(right: 24.0),
        labelText: label,
        prefixIcon: Icon(icon),
        prefixIconConstraints: const BoxConstraints(minWidth: 80, minHeight: 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      textAlign: TextAlign.right,
    );
  }
}
