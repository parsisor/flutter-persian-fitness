
import 'package:zerang/fitness_hub/components/profile2.dart';
import 'package:flutter/material.dart';

import 'package:zerang/fitness_hub/components/streak_bar/streak_bar.dart';
import 'package:zerang/fitness_hub/components/BarChartsample.dart';
import 'package:zerang/fitness_hub/components/Qoutes/quotes.dart';
import 'package:zerang/fitness_hub/otherPages/Settings/settings.dart';
import 'package:zerang/fitness_hub/otherPages/Tools/Tools.dart';
import 'package:zerang/fitness_hub/otherPages/Workout/workout.dart';
import 'package:zerang/fitness_hub/otherPages/Brain/brainWorkout.dart';

class ApplicationHub extends StatefulWidget {
  const ApplicationHub({super.key});

  @override
  _ApplicationHubState createState() => _ApplicationHubState();
}

class _ApplicationHubState extends State<ApplicationHub> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const WorkoutsSection(),
    BrainWorkout(),
    const ToolsPage(),
    const SettingsPage(),
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
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
              size: 28, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () {
            // Implement notification icon action
          },
        ),
        title: Text(
          'zerang',
          style: TextStyle(
            fontSize: 28.0,
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          ProfileButton(),
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
                duration: const Duration(milliseconds: 500),
                height: _isExpanded ? 400 : 102,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
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
                          children: const [
                            Expanded(
                              child: BarChartSample3(),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          key: UniqueKey(),
                          children: const [
                            StreakBarRow(),
                          ],
                        ),
                ),
              ),
            ),
            QuoteSection(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'چالش‌ها',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ),
              ),
            ),
            const ChallengesSection(),
          ],
        ),
      ),
    );
  }
}

class ChallengesSection extends StatelessWidget {
  const ChallengesSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ChallengeTile(
            title: 'چالش تمرینات ورزشی 30 روزه',
            subtitle: 'تکمیل وظایف ورزشی مختلف هر روز',
            progress: 0.7,
            isDarkMode: isDarkMode,
          ),
          const SizedBox(height: 16.0),
          ChallengeTile(
            title: 'چالش ذهن آگاهی',
            subtitle: 'تمرین ذهنی و کاهش استرس',
            progress: 0.5,
            isDarkMode: isDarkMode,
          ),
          const SizedBox(height: 16.0),
          ChallengeTile(
            title: 'چالش بدون قند',
            subtitle: '30 روز اجتناب از مصرف قند برای بهبود سلامتی',
            progress: 0.2,
            isDarkMode: isDarkMode,
          ),
          const SizedBox(height: 16.0),
          ChallengeTile(
            title: 'چالش خواندن کتاب',
            subtitle: 'خواندن یک کتاب هر هفته',
            progress: 0.9,
            isDarkMode: isDarkMode,
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
  final bool isDarkMode;

  const ChallengeTile({super.key, 
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDarkMode ? Colors.grey[800] : Colors.white, // Card background color
      child: ListTile(
        leading: const Icon(Icons.local_fire_department, size: 30),
        title: Text(
          title,
          textDirection: TextDirection.rtl,
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black), // Title color
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              subtitle,
              textDirection: TextDirection.rtl,
              style: TextStyle(color: isDarkMode ? Colors.white : Colors.black), // Subtitle color
            ),
            const SizedBox(height: 8.0),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        onTap: () {
          // Handle onTap action
        },
      ),
    );
  }
}
