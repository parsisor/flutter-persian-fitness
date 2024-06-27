import 'package:Zerang/Theme/consts.dart';
import 'package:flutter/material.dart';
import 'package:Zerang/fitness_hub/otherPages/Workout/Data/workout_Page.dart';
import 'package:Zerang/fitness_hub/otherPages/Workout/test_page.dart';

class WorkoutsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage("assets/Icons/feelings_icons/1x/Asset 2.png"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16.0),
            Text(
              'امروز چه ورزشی را میخواهی انجام بدهی؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 20.0,
                color: Theme.of(context).textTheme.bodyLarge!.color,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: gray,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: TextField(
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
            SizedBox(height: 12.0),
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
                      // Handle coach card tap
                    },
                  ),
                  _buildOptionCard(
                    context,
                    'assets/vectors/Planner.png',
                    'برنامه ریزی',
                    () {
                      // Handle planner card tap
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LevelTestPage()),
                );
              },
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  image: DecorationImage(
                    image: AssetImage("assets/photos/Fitness_journy.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(16.0),
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
                  child: Column(
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
            SizedBox(height: 20.0),
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
            SizedBox(height: 8.0),
            _buildClickableContainer(
              context,
              'تمرینات سینه و شکم',
              'تمرینات سینه و شکم',
              'assets/photos/Sine.jpg',
              'sine',
            ),
            SizedBox(height: 8.0),
            _buildClickableContainer(
              context,
              'تمرینات بازو و ساعد',
              'تمرینات بازو و ساعد',
              'assets/photos/Bazo.jpg',
              'bazo',
            ),
            SizedBox(height: 8.0),
            _buildClickableContainer(
              context,
              'تمرینات پا و ران',
              'تمرینات پا و ران',
              'assets/photos/Pa.jpg',
              'pa',
            ),
            SizedBox(height: 8.0),
            _buildClickableContainer(
              context,
              'کل بدن',
              'تمرینات کل بدن',
              'assets/photos/Badan.jpg',
              'badan',
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(BuildContext context, String imagePath, String title, VoidCallback onTap) {
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
              ),
              child: Center(
                child: Image.asset(imagePath, width: 50, height: 50),
              ),
            ),
            SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClickableContainer(BuildContext context, String title, String description, String imagePath, String id) {
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
            transitionDuration: Duration(milliseconds: 300),
          ),
        );
      },
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: gray,
          borderRadius: BorderRadius.circular(24.0),
        ),
        padding: EdgeInsets.all(16.0),
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
            SizedBox(width: 16.0),
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
                      color: Colors.black, // Updated text color to black
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black, // Updated text color to black
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
