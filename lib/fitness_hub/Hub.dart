import 'package:Zerang/Theme/consts.dart';
import 'package:Zerang/fitness_hub/otherPages/brainWorkout.dart';
import 'package:Zerang/fitness_hub/otherPages/components/BarChartsample.dart';
import 'package:Zerang/fitness_hub/otherPages/components/Qoutes/quotes.dart';
import 'package:Zerang/fitness_hub/otherPages/settings.dart';
import 'package:Zerang/fitness_hub/otherPages/Tools.dart';
import 'package:Zerang/fitness_hub/otherPages/workout.dart';
import 'package:Zerang/fitness_hub/streak_bar/streak_bar.dart';
import 'package:Zerang/sign_in/sign_in_UI.dart';
import 'package:Zerang/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

class ApplicationHub extends StatefulWidget {
  @override
  _ApplicationHubState createState() => _ApplicationHubState();
}

class _ApplicationHubState extends State<ApplicationHub> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    WorkoutsSection(),
    BrainWorkout(),
    ToolsPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'خانه',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'تمرینات ورزشی',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'تمرین ذهنی',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'ابزارها',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'تنظیمات',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: selectedButtonColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.notifications,
              size: 28, color: Theme.of(context).textTheme.bodyLarge!.color),
          onPressed: () {
            
          },
        ),
        title: Text(
          'Zerang',
          style: TextStyle(
            fontSize: 28.0,
            color: Theme.of(context).textTheme.bodyLarge!.color,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, 
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignIn()),
    );
  },
  child: Container(
    padding: const EdgeInsets.all(2.0), 
    decoration: BoxDecoration(
      border: Border.all(
        color: Theme.of(context).primaryColor,
        width: 2,
      ),
      shape: BoxShape.circle,
    ),
    child: CircleAvatar(
      radius: 20.0,
      backgroundImage: AssetImage("assets/Icons/feelings_icons/1x/Asset 2.png"), 
    ),
  ),
),

          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.delta.dy > 0) {
                  setState(() {
                    _isExpanded = true;
                  });
                } else if (details.delta.dy < 0) {
                  setState(() {
                    _isExpanded = false;
                  });
                }
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: _isExpanded ? 250 : 102,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeOut,
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: _isExpanded
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          key: UniqueKey(),
                          children: [
                            Expanded(
                              child: BarChartSample3(), 
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          key: UniqueKey(),
                          children: [
                            StreakBarRow(),
                          ],
                        ),
                ),
              ),
            ),
            QuoteSection(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'چالش‌ها',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            ChallengesSection(), 
          ],
        ),
      ),
    );
  }
}

class ChallengesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        
        children: [
          ChallengeTile(
            title: 'چالش تمرینات ورزشی 30 روزه',
            subtitle: 'تکمیل وظایف ورزشی مختلف هر روز',
            progress: 0.7, 
          ),
          SizedBox(height: 16.0),
          ChallengeTile(
            title: 'چالش ذهن آگاهی',
            subtitle: 'تمرین ذهنی و کاهش استرس',
            progress: 0.5, 
          ),
          SizedBox(height: 16.0),
          ChallengeTile(
            title: 'چالش بدون قند',
            subtitle: '30 روز اجتناب از مصرف قند برای بهبود سلامتی',
            progress: 0.2, 
          ),
          SizedBox(height: 16.0),
          ChallengeTile(
            title: 'چالش خواندن کتاب',
            subtitle: 'خواندن یک کتاب هر هفته',
            progress: 0.9, 
          ),
        ],
      ),
    );
  }
}

class ChallengeTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final double progress;

  const ChallengeTile({
    required this.title,
    required this.subtitle,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.local_fire_department , size: 30,),
        title: Text(title , textDirection: TextDirection.rtl,),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(subtitle , textDirection: TextDirection.rtl,),
            SizedBox(height: 8.0),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            ),
          ],
        ),
        onTap: () {
          
        },
      ),
    );
  }
}
