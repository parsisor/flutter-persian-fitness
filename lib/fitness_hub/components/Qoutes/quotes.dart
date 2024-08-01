import 'dart:math';
import 'package:zerang/fitness_hub/components/qoutes/data.dart';
import 'package:flutter/material.dart';

class QuoteSection extends StatelessWidget {
  final Random random = Random();

  QuoteSection({super.key});

  List<Quote> getRandomQuotes() {
    quotes.shuffle();
    return quotes.sublist(0, min(3, quotes.length));
  }

  @override
  Widget build(BuildContext context) {
    List<Quote> randomQuotes = getRandomQuotes();

    return Center(
      child: Container(
        width: 350,
        height: 200,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
        ),
        child: PageView.builder(
          itemCount: randomQuotes.length,
          itemBuilder: (context, index) {
            return buildQuoteCard(randomQuotes[index], Theme.of(context));
          },
        ),
      ),
    );
  }

  Widget buildQuoteCard(Quote quote, ThemeData theme) {
    final textColor = theme.colorScheme.onSurface;
    final backgroundColor = theme.colorScheme.surface;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'سخن بزرگان',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                quote.body,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
                maxLines: null,
              ),
              const SizedBox(height: 8),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
