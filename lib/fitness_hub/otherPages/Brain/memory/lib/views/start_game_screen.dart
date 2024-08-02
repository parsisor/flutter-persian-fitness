import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zerang/fitness_hub/otherPages/Brain/memory/lib/views/game_screen.dart';

class StartGameScreen extends StatefulWidget {
  const StartGameScreen({super.key});

  @override
  State<StartGameScreen> createState() => _StartGameScreenState();
}

class _StartGameScreenState extends State<StartGameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "بازی حافظه فلاتر",
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          LottieBuilder.asset(
            "assets/gifs/lotties/brain_animation.json",
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyFlipCardGame(),
                ),
              );
            },
            child: const Text(
              "شروع بازی",
              textDirection: TextDirection.rtl,
            ),
          )
        ],
      ),
    );
  }
}
