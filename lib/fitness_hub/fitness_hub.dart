import 'package:Zerang/articles/view_page.dart';
import 'package:Zerang/calculator/calculator.dart';
import 'package:Zerang/Theme/consts.dart';
import 'package:Zerang/fitness_hub/streak_bar/streak_bar.dart';
import 'package:Zerang/fitness_hub/streak_bar/week_day.dart';
import 'package:Zerang/settings_Page/settings.dart';
import 'package:Zerang/sign_in/sign_in_UI.dart';
import 'package:Zerang/workouts/workouts.dart';
import 'package:Zerang/workouts/workoutsplus/workout_Page.dart';
import 'package:Zerang/workouts/workoutsplus/workout_class.dart';
import 'package:flutter/material.dart';

class Fitness_Hub extends StatefulWidget {
  const Fitness_Hub({super.key});

  @override
  State<Fitness_Hub> createState() => _Fitness_HubState();
}

class _Fitness_HubState extends State<Fitness_Hub> {
  bool _isChatOpen = false;
  TextEditingController _chatController = TextEditingController();
  List<Map<String, String>> _messages = [
    {"name": "ابی", "text": "سلام          چطور میتونم کمکتون کنم؟"}
  ];
  final ScrollController _scrollController = ScrollController();

  void _sendMessage() {
    if (_chatController.text.isNotEmpty) {
      setState(() {
        _messages.add({"name": "کاربر", "text": _chatController.text});
        _chatController.clear();
      });
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _openFullScreenChat() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FullScreenChat(messages: _messages),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('صفحه اصلی'),
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          SignIn(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 400),
                      reverseTransitionDuration: Duration(milliseconds: 400),
                    ),
                  );
                },
                icon: Icon(Icons.login),
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          SettingsPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
                        const end = Offset.zero;
                        const curve = Curves.easeInOut;

                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));
                        var offsetAnimation = animation.drive(tween);

                        return SlideTransition(
                          position: offsetAnimation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 400),
                      reverseTransitionDuration: Duration(milliseconds: 400),
                    ),
                  );
                },
              )
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.normal),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      StreakBar(roz: "Mon", vaziat: StreakStatus.Yes),
                      StreakBar(roz: "Tue", vaziat: StreakStatus.No),
                      StreakBar(roz: "Wed", vaziat: StreakStatus.Yes),
                      StreakBar(roz: "Thu", vaziat: StreakStatus.Today),
                      StreakBar(roz: "Fri", vaziat: StreakStatus.Yes),
                      StreakBar(roz: "Sat", vaziat: StreakStatus.No),
                      StreakBar(roz: "Sun", vaziat: StreakStatus.Yes),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Divider(thickness: 0.4),
                  Container(
                    decoration: BoxDecoration(
                      color: colorScheme.secondary,
                      borderRadius: BorderRadius.circular(21.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/vectors/Dumbbell.png"),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                            ),
                            Positioned(
                              top: 20,
                              right: 20,
                              child: Image.asset("assets/vectors/calorie.png"),
                            ),
                            Positioned(
                              top: 20,
                              left: 20,
                              child: Text(
                                "۲۰۰",
                                style: TextStyle(
                                  color: colorScheme.onSecondary,
                                  fontSize: 70,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 24,
                              left: 40,
                              child: Text(
                                "کالری",
                                style: TextStyle(
                                  color: colorScheme.onSecondary,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Divider(thickness: 0.4),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ArticlePage()),
                          );
                        },
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'مقاله ها',
                              style: TextStyle(
                                  fontSize: 22, color: colorScheme.onPrimary),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BMIHomePage()),
                          );
                        },
                        child: Container(
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'ماشین حساب',
                              style: TextStyle(
                                  fontSize: 22, color: colorScheme.onPrimary),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  SizedBox(height: 10.0),
                  Workouts(context, "سینه و شکم", "assets/photos/sine.png",
                      "sine", containerColor1),
                  SizedBox(height: 10),
                  Workouts(context, "بازو و ساعد", "assets/photos/bazo.png",
                      "bazo", containerColor2),
                  SizedBox(height: 10),
                  Workouts(context, "ران و ساق", "assets/photos/pa.png", "pa",
                      containerColor3),
                  SizedBox(height: 10),
                  Workouts(context, "  کل بدن", "assets/photos/badan.png",
                      "badan", containerColor4),
                ]),
              ),
            ),
          ),
          if (_isChatOpen) _buildChatBox(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isChatOpen = !_isChatOpen;
          });
        },
        child: Icon(Icons.chat),
      ),
    );
  }

  Widget _buildChatBox(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      bottom: _isChatOpen ? 80 : -300,
      right: 20,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 300,
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      _messages[index]['name']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    subtitle: Text(
                      _messages[index]['text']!,
                      style: TextStyle(color: colorScheme.onSurface),
                    ),
                  );
                },
              ),
            ),
            Divider(height: 1.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _chatController,
                      decoration: InputDecoration(
                        hintText: 'پیام خود را بنویسید...',
                        hintStyle: TextStyle(color: colorScheme.onSurface),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: colorScheme.primary),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FullScreenChat extends StatelessWidget {
  final List<Map<String, String>> messages;

  FullScreenChat({required this.messages});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text('Chat with Abi')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    messages[index]['name']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  subtitle: Text(
                    messages[index]['text']!,
                    style: TextStyle(color: colorScheme.onSurface),
                  ),
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'پیام خود را بنویسید...',
                      hintStyle: TextStyle(color: colorScheme.onSurface),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: colorScheme.primary),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget Workouts(
    BuildContext context, String part, String img, String id, Color color) {
  final double darknessFraction = 0.8;

  Color darkerColor = Color.fromRGBO(
    (color.red * darknessFraction).toInt(),
    (color.green * darknessFraction).toInt(),
    (color.blue * darknessFraction).toInt(),
    1.0,
  );

  return Container(
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(21),
      gradient: LinearGradient(
        colors: [
          darkerColor,
          color,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [0.3, 1.0],
      ),
    ),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                WorkoutPage(id: id),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = 0.0;
              var end = 1.0;
              var curve = Curves.easeInOut;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var opacityAnimation = animation.drive(tween);

              return FadeTransition(
                opacity: opacityAnimation,
                child: child,
              );
            },
            transitionDuration: Duration(milliseconds: 300),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              child: Image.asset(
                img,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 40),
            Text(
              part,
              style: TextStyle(
                color: sefid,
                fontSize: 32,
              ),
            ),
            SizedBox(width: 10),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),
    ),
  );
}
