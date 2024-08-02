import 'package:zerang/fitness_hub/otherPages/Brain/IQ_TEST/Screens/page_selector.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key});

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  bool _validate = false;
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Wrap(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 20),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.green, offset: Offset(5, 5), blurRadius: 10)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Card(
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  margin: EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'بیایید شروع کنیم:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Card(
                  margin: EdgeInsets.only(top: 20),
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'شما 100 ثانیه وقت دارید تا به 20 سوال پاسخ دهید. برای شروع لطفا نام خود را وارد کرده و دکمه شروع را فشار دهید.',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.only(top: 20),
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  child: TextField(
                    decoration: InputDecoration(
                      errorText: _validate
                          ? 'لطفا قبل از ادامه نام خود را وارد کنید'
                          : null,
                      labelText: 'نام',
                      icon: const Icon(Icons.person),
                    ),
                    controller: name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                    child: Card(
                      shadowColor: Colors.greenAccent,
                      elevation: 3,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextButton.icon(
                        style: TextButton.styleFrom(),
                        onPressed: () {
                          if (name.text.isEmpty) {
                            setState(() {
                              _validate = true;
                            });
                          } else {
                            Fluttertoast.showToast(
                                msg: 'خوش آمدید ${name.text}',
                                timeInSecForIosWeb: 3);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => PageSelector(name.text)));
                          }
                        },
                        icon: const Icon(Icons.star),
                        label: const Text(
                          'شروع',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
