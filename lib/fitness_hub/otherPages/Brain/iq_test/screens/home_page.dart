import 'package:zerang/fitness_hub/otherPages/brain/IQ_TEST/widget/content_widget.dart';
import 'package:zerang/fitness_hub/otherPages/brain/IQ_TEST/widget/main_background_screen.dart';
import 'package:zerang/fitness_hub/otherPages/brain/brainWorkout.dart';
import 'package:flutter/material.dart';


class IQ_TEST_PAGE extends StatelessWidget {
  const IQ_TEST_PAGE({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'آزمون IQ',
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) =>  BrainWorkout()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: BackGroundScrren(const ContentWidget()),
        ),
      ),
    );
  }
}
