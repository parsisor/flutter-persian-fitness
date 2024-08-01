import 'package:zerang/Theme/consts.dart';
import 'package:zerang/fitness_hub/components/profile2.dart';
import 'package:zerang/fitness_hub/otherPages/Workout/morabi/hire.dart';
import 'package:zerang/fitness_hub/otherPages/Workout/planner/planner.dart';
import 'package:flutter/material.dart';
import 'package:zerang/fitness_hub/otherPages/Workout/Data/workout_Page.dart';
import 'package:zerang/fitness_hub/otherPages/Workout/test_page.dart';

class WorkoutsSection extends StatelessWidget {
  const WorkoutsSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.notifications,
            size: 28,
            color: Theme.of(context).textTheme.bodyLarge!.color,
          ),
          onPressed: () {
            // Implement notification icon action
          },
        ),
        title: Text(
          'ورزش',
          style: TextStyle(
            fontSize: 28.0,
            color: Theme.of(context).textTheme.bodyLarge!.color,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          ProfileButton()
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16.0),
            Text(
              'امروز چه ورزشی را میخواهی انجام بدهی؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20.0,
                color: Theme.of(context).textTheme.bodyLarge!.color,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: isDarkMode ? Colors.grey[800] : gray,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: const TextField(
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'جستجو',
                  hintStyle: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildOptionCard(
                    context,
                    'assets/vectors/virtual_Gym.png',
                    'ورزشگاه مجازی',
                    () {
                      // Handle virtual gym card tap
                    },
                  ),
                  _buildOptionCard(
                    context,
                    'assets/vectors/whistle.png',
                    'مربی بگیرید',
                    () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HireCoachScreen()),
                );
                    },
                  ),
                  _buildOptionCard(
                    context,
                    'assets/vectors/Planner.png',
                    'برنامه ریزی',
                    () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PlannerScreen()),
                );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FitnessQuizScreen()),
                );
              },
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/photos/Fitness_journy.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.5),
                        Colors.transparent,
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'شروع مسیر رسیدن \n به تناسب اندام',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'با دادن یک تست ساده سطح ورزش خود را بیابید \n و سپس شروع به ورزش حرفه کنید',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(
                  'ورزش ها',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).textTheme.bodyLarge!.color,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            _buildClickableContainer(
              context,
              'تمرینات سینه و شکم',
              'تمرینات سینه و شکم',
              'assets/photos/Sine.jpg',
              'sine',
            ),
            const SizedBox(height: 8.0),
            _buildClickableContainer(
              context,
              'تمرینات بازو و ساعد',
              'تمرینات بازو و ساعد',
              'assets/photos/Bazo.jpg',
              'bazo',
            ),
            const SizedBox(height: 8.0),
            _buildClickableContainer(
              context,
              'تمرینات پا و ران',
              'تمرینات پا و ران',
              'assets/photos/Pa.jpg',
              'pa',
            ),
            const SizedBox(height: 8.0),
            _buildClickableContainer(
              context,
              'کل بدن',
              'تمرینات کل بدن',
              'assets/photos/Badan.jpg',
              'badan',
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context, String imagePath, String title, VoidCallback onTap) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(color: selectedButtonColor, width: 2), // Updated to use selectedButtonColor
                color: isDarkMode ? Colors.grey[800] : Colors.white,
              ),
              child: Center(
                child: Image.asset(imagePath, width: 50, height: 50),
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: isDarkMode ? Colors.white : Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClickableContainer(BuildContext context, String title, String description, String imagePath, String id) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => WorkoutPage(id: id),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              var begin = 0.0;
              var end = 1.0;
              var curve = Curves.easeInOut;

              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var opacityAnimation = animation.drive(tween);

              return FadeTransition(
                opacity: opacityAnimation,
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 300),
          ),
        );
      },
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[800] : gray,
          borderRadius: BorderRadius.circular(24.0),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? Colors.white : Colors.black, // Updated text color for both modes
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: isDarkMode ? Colors.white : Colors.black, // Updated text color for both modes
                    ),
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
