import 'dart:math';

import 'package:Zerang/calculator/MBI_Displaypage.dart';
import 'package:Zerang/calculator/loading.dart';
import 'package:Zerang/code_assets.dart/consts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BMIHomePage extends StatefulWidget {
  @override
  _BMIHomePageState createState() => _BMIHomePageState();
}

class _BMIHomePageState extends State<BMIHomePage>
    with SingleTickerProviderStateMixin {
  String? gender;
  int age = 0;
  double height = 0.0;
  double weight = 0.0;
  double bmi = 0.0;

  final _formKey = GlobalKey<FormState>();

  late AnimationController _controller;
  late Animation<double> _widthAnimation;
  late Animation<double> _heightAnimation;
  late Animation<BorderRadius?> _borderRadiusAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _textOpacityAnimation;
  late Animation<double> _imageOpacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _widthAnimation =
        Tween<double>(begin: 600.0, end: 200.0).animate(_controller);
    _heightAnimation =
        Tween<double>(begin: 200.0, end: 200.0).animate(_controller);
    _borderRadiusAnimation = BorderRadiusTween(
      begin: BorderRadius.circular(100.0),
      end: BorderRadius.circular(100.0),
    ).animate(_controller);
    _colorAnimation = ColorTween(
      begin: (button_color),
      end: (button_color),
    ).animate(_controller);
    _textOpacityAnimation =
        Tween<double>(begin: 1.0, end: 0.0).animate(_controller);
    _imageOpacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'محاسبه گر شاخص توده ی بدنی',
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blueAccent.withOpacity(0.1),
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('آقا', style: TextStyle(fontSize: 20)),
                          leading: Radio<String>(
                            value: 'آقا',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                            },
                          ),
                          trailing: FaIcon(FontAwesomeIcons.mars),
                        ),
                        ListTile(
                          title: Text('خانم', style: TextStyle(fontSize: 20)),
                          leading: Radio<String>(
                            value: 'خانم',
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value;
                              });
                            },
                          ),
                          trailing: FaIcon(FontAwesomeIcons.venus),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'سن',
                        border: OutlineInputBorder(),
                        errorMaxLines: 2,
                        prefixIcon: Icon(Icons.cake)
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'لطفا سن را وارد کنید';
                        }
                        final intAge = int.tryParse(value);
                        if (intAge == null || intAge <= 0 || intAge > 120) {
                          return 'لطفا سن معتبر وارد کنید';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          age = int.tryParse(value) ?? 0;
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'قد (cm)',
                        border: OutlineInputBorder(),
                        errorMaxLines: 2,
                        prefixIcon: Icon(Icons.height)
                      ),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'لطفا قد را وارد کنید';
                        }
                        final doubleHeight = double.tryParse(value);
                        if (doubleHeight == null ||
                            doubleHeight <= 50 ||
                            doubleHeight > 250) {
                          return 'لطفا قد معتبر وارد کنید';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          height = double.tryParse(value) ?? 0.0;
                        });
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'وزن (کیلوگرم)',
                        border: OutlineInputBorder(),
                        errorMaxLines: 2,
                        prefixIcon: Icon(Icons.fitness_center)
                      ),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'لطفا وزن را وارد کنید';
                        }
                        final doubleWeight = double.tryParse(value);
                        if (doubleWeight == null ||
                            doubleWeight <= 10 ||
                            doubleWeight > 300) {
                          return 'لطفا وزن معتبر وارد کنید';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          weight = double.tryParse(value) ?? 0.0;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 150,
                    height: 75,
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        return Center(
                          child: GestureDetector(
                            onTap: () {
                              if (_formKey.currentState?.validate() == true) {
                                _controller.forward().then((_) {
                                  Future.delayed(Duration(milliseconds: 1200), () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => LoadingPage(),
                                      ),
                                    );
                                    Future.delayed(Duration(milliseconds: Random().nextInt(1000) + 1000), () {
                                      calculateBMI();
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              BMIDisplayPage(bmi: bmi),
                                        ),
                                      );
                                    });
                                  });
                                });
                              }
                            },
                            child: Container(
                              width: _widthAnimation.value,
                              height: _heightAnimation.value,
                              decoration: BoxDecoration(
                                color: _colorAnimation.value,
                                borderRadius: _borderRadiusAnimation.value,
                                
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Opacity(
                                    opacity: _textOpacityAnimation.value,
                                    child: Text(
                                      'شاخص را محاسبه کن',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: white
                                        
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: _imageOpacityAnimation.value,
                                    child: Image.asset(
                                      '../../assets/Icons/tick.png',
                                      height: 62,
                                      width: 62,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    if (height != 0 && weight != 0) {
      double heightInMeter = height / 100;
      double bmiResult = weight / (heightInMeter * heightInMeter);
      setState(() {
        bmi = bmiResult;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Center(child: Text('لطفا اطلاعات را بدرستی وارد کنید')),
        ),
      );
    }
  }
}
