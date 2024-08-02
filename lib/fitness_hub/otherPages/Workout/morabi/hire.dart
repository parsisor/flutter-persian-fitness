import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Coach {
  final String name;
  final String description;
  final String imageUrl;
  final String phoneNumber;
  final String email;

  Coach({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.phoneNumber,
    required this.email,
  });
}

class HireCoachScreen extends StatelessWidget {
  final List<Coach> coaches = [
    Coach(
      name: 'مربی ۱',
      description: 'این مربی دارای تجربه ۱۰ ساله در زمینه بدنسازی و فیتنس است.',
      imageUrl: 'assets/photos/morabi1.jpg',
      phoneNumber: '09123456789',
      email: 'Amirhoosinn37@gmail.com',
    ),
    Coach(
      name: 'مربی ۲',
      description: 'مربی تخصصی یوگا و پیلاتس با سابقه تدریس در چندین باشگاه معتبر.',
      imageUrl: 'assets/photos/morabi2.jpg',
      phoneNumber: '09223456789',
      email: 'amirhoosinn38@gmail.com',
    ),
    
  ];

  HireCoachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('استخدام مربی', textDirection: TextDirection.rtl),
      ),
      body: ListView.builder(
        itemCount: coaches.length,
        itemBuilder: (context, index) {
          final coach = coaches[index];
          return Card(
            margin: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoachDetailScreen(coach: coach),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(coach.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            coach.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textDirection: TextDirection.rtl,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            coach.description,
                            style: const TextStyle(fontSize: 14),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CoachDetailScreen extends StatelessWidget {
  final Coach coach;

  const CoachDetailScreen({super.key, required this.coach});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('جزئیات مربی', textDirection: TextDirection.rtl),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(coach.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              coach.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              coach.description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.phone),
              label: const Text('تماس با مربی', textDirection: TextDirection.rtl),
              onPressed: () {
                _launchURL('tel:${coach.phoneNumber}');
              },
            ),


            const SizedBox(height: 20,),
            Text(coach.email)

          ],
        ),
      ),
    );
  }
}
