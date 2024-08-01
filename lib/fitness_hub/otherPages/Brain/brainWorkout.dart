import 'package:zerang/fitness_hub/otherPages/Brain/IQ_TEST/Screens/splash_screen.dart';
import 'package:zerang/fitness_hub/otherPages/Brain/memory/lib/views/start_game_screen.dart';
import 'package:zerang/fitness_hub/otherPages/Brain/puzzle_page/puzzle.dart';
import 'package:flutter/material.dart';

class BrainWorkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('برنامه تمرین ذهنی'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0),
            _buildActivityCard(
              context,
              'چالش پازل',
              'مهارت حل مسئله خود را با پازل ها آزمایش کنید!',
              Icons.branding_watermark_sharp,
              () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PuzzlePage()));
              },
            ),
            const SizedBox(height: 20.0),
            _buildActivityCard(
              context,
              'آزمون حافظه',
              'آزمایش حافظه خود را بگیرید و قدرت ذهنی خود را بهبود ببخشید.',
              Icons.memory,
              () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const StartGameScreen()));
              },
            ),
            const SizedBox(height: 20.0),
            _buildActivityCard(
              context,
              'آزمون آی کیو',
              'بهره ی هوشی خود را بسنجید.',
              Icons.language,
              () {
               Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WelcomeWidget()));
              },
            ),
            
          ],
        ),
      ),
    );
  }

  Widget _buildActivityCard(BuildContext context, String title,
      String description, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 40.0,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey[600],
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
