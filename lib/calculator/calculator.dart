import 'package:Zerang/calculator/MBI_Displaypage.dart';
import 'package:Zerang/calculator/loading.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BMIHomePage extends StatefulWidget {
  @override
  _BMIHomePageState createState() => _BMIHomePageState();
}

class _BMIHomePageState extends State<BMIHomePage> {
  String? gender;
  int age = 0;
  double height = 0.0;
  double weight = 0.0;
  double bmi = 0.0;

  final _formKey = GlobalKey<FormState>();

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
                      ),
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'لطفا قد را وارد کنید';
                        }
                        final doubleHeight = double.tryParse(value);
                        if (doubleHeight == null || doubleHeight <= 50 || doubleHeight > 250) {
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
                      ),
                      keyboardType: TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'لطفا وزن را وارد کنید';
                        }
                        final doubleWeight = double.tryParse(value);
                        if (doubleWeight == null || doubleWeight <= 10 || doubleWeight > 300) {
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
                  SizedBox(height: 16.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoadingPage(),
                          ),
                        );

                        Future.delayed(Duration(seconds: 2), () {
                          calculateBMI();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => BMIDisplayPage(bmi: bmi),
                            ),
                          );
                        });
                      }
                    },
                    icon: FaIcon(FontAwesomeIcons.calculator),
                    label: Text('شاخص را محاسبه کن'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      textStyle: TextStyle(fontSize: 18.0),
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
