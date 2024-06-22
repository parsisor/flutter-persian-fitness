import 'package:flutter/material.dart';

class QuoteSection extends StatelessWidget {
  final List<Quote> quotes = [
    Quote(
      quote: '"kori bade vali vay be hale oni ke konie"',
      author: '- Helen Keller',
    ),
    Quote(quote: "ژنده", author: "- هاشمی"),
    Quote(
      quote:
          '"shayad adamaye bozorg kiret nakonan vali kir haye bozorg adamet mikonan"',
      author: '- Abraham Lincoln',
    ),
    Quote(
      quote: '"Stop masteurebating JUST START RAPIeNG"',
      author: '- Master ogway',
    ),
    Quote(quote: "Spiderman!!! ESLAMII SPIDERMANE BEBIN", author: "- paziar")
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 200, 
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: PageView.builder(
          itemCount: quotes.length,
          itemBuilder: (context, index) {
            return buildQuoteCard(quotes[index], Theme.of(context));
          },
        ),
      ),
    );
  }

  Widget buildQuoteCard(Quote quote, ThemeData theme) {
    final textColor =
        theme.brightness == Brightness.light ? Colors.black : Colors.white;
    final backgroundColor =
        theme.brightness == Brightness.light ? Colors.grey[200] : Colors.black;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
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
                'Quote of the Day',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              SizedBox(height: 12),
              Text(
                quote.quote,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
                maxLines: null, 
              ),
              SizedBox(height: 8),
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

class Quote {
  final String quote;
  final String author;

  Quote({required this.quote, required this.author});
}
