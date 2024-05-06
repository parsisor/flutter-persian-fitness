import 'package:flutter/material.dart';



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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text('محاسبه گر شاخص توده ی بدنی'),
=======
        title: Text('محاسبه کننده ی شاخص توده ی بدنی'),
>>>>>>> f13dbc2e92d2efaf6d68522a420254376ccc43ef
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<String>(
              value: gender,
<<<<<<< HEAD
              hint: Text('جنسیت خود را انتخاب کنید'),
=======
              hint: Text('جنسیت را انتخاب کنید'),
>>>>>>> f13dbc2e92d2efaf6d68522a420254376ccc43ef
              onChanged: (value) {
                setState(() {
                  gender = value;
                });
              },
              items: ['آقا', 'خانم'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'سن'),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  age = int.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'قد (cm)'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onChanged: (value) {
                setState(() {
                  height = double.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'وزن(کیلوگرم)'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onChanged: (value) {
                setState(() {
                  weight = double.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                calculateBMI();
              },
<<<<<<< HEAD
              child: Text('ماشین حساب شاخص توده ی بدنی'),
=======
              child: Text('شاخص را محاسبه کن'),
>>>>>>> f13dbc2e92d2efaf6d68522a420254376ccc43ef
            ),
            SizedBox(height: 16.0),
            Center(
              child: Text(
                'BMI: ${bmi.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
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
