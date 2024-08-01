import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _aboutMe =
      'المپیادی | امیرحسین اسلامی هستم | متولد 1387 | طراح و ادیتور | کدنویس';
  int _weight = 68;
  int _height = 175;
  int _intelligence = 100;
  List<String> _interests = ['تقویت عضلات', 'دویدن', 'دانستنی', 'تغذیه صحیح' , 'هنر'];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/photos/Profile2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  const Text(
                                    'امیرحسین',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.edit),
                                    color: Colors.white,
                                    onPressed: () async {
                                      final result =
                                          await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              EditProfilePage(
                                            aboutMe: _aboutMe,
                                            weight: _weight,
                                            height: _height,
                                            intelligence: _intelligence,
                                            interests: List.from(_interests),
                                          ),
                                        ),
                                      );
                                      if (result != null &&
                                          result is Map<String, dynamic>) {
                                        setState(() {
                                          _aboutMe = result['aboutMe'];
                                          _weight = result['weight'];
                                          _height = result['height'];
                                          _intelligence =
                                              result['intelligence'];
                                          _interests =
                                              List.from(result['interests']);
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                                'تغییرات با موفقیت ذخیره شدند'),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    backgroundColor: Colors.white,
                                    backgroundImage: AssetImage(
                                        'assets/photos/Profile1.jpg'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'درباره من',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        _aboutMe, 
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'علایق',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: _interests
                            .map(
                              (interest) => Chip(
                                label: Text(interest),
                                deleteIcon: const Icon(Icons.cancel),
                                onDeleted: () {
                                  setState(() {
                                    _interests.remove(interest);
                                  });
                                },
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'وزن',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '$_weight kg', 
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const VerticalDivider(),
                          Column(
                            children: [
                              const Text(
                                'قد',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '$_height cm', 
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const VerticalDivider(),
                          Column(
                            children: [
                              const Text(
                                'بهره‌وری هوشی',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '$_intelligence', 
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  final String aboutMe;
  final int weight;
  final int height;
  final int intelligence;
  final List<String> interests;

  const EditProfilePage({
    super.key,
    required this.aboutMe,
    required this.weight,
    required this.height,
    required this.intelligence,
    required this.interests,
  });

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late TextEditingController _aboutMeController;
  late TextEditingController _weightController;
  late TextEditingController _heightController;
  late TextEditingController _intelligenceController;
  List<String> _interests = [];

  @override
  void initState() {
    super.initState();
    _aboutMeController = TextEditingController(text: widget.aboutMe);
    _weightController = TextEditingController(text: widget.weight.toString());
    _heightController = TextEditingController(text: widget.height.toString());
    _intelligenceController =
        TextEditingController(text: widget.intelligence.toString());
    _interests = List.from(widget.interests);
  }

  @override
  void dispose() {
    _aboutMeController.dispose();
    _weightController.dispose();
    _heightController.dispose();
    _intelligenceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ویرایش پروفایل'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _aboutMeController,
                maxLength: 400, 
                decoration: const InputDecoration(
                  labelText: 'درباره من',
                  border: OutlineInputBorder(),
                ),
                minLines: 3,
                maxLines: 5,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _weightController,
                keyboardType: TextInputType.number, 
                decoration: const InputDecoration(
                  labelText: 'وزن',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _heightController,
                keyboardType: TextInputType.number, 
                decoration: const InputDecoration(
                  labelText: 'قد',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _intelligenceController,
                keyboardType: TextInputType.number, 
                decoration: const InputDecoration(
                  labelText: 'بهره‌وری هوشی',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'علایق',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: _interests
                    .map(
                      (interest) => ChoiceChip(
                        label: Text(interest),
                        selected: true,
                        onSelected: (_) {}, 
                      ),
                    )
                    .toList()
                  ..add(
                    ChoiceChip(
                      label: const Icon(Icons.add),
                      selected: false,
                      onSelected: (_) {
                        _showAddInterestDialog(context);
                      },
                    ),
                  ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  
                  _saveChanges(context);
                },
                child: const Text('ذخیره تغییرات'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAddInterestDialog(BuildContext context) {
    String newInterest = '';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('افزودن علایق جدید'),
          content: TextField(
            onChanged: (value) {
              newInterest = value;
            },
            decoration: const InputDecoration(
              labelText: 'علاقه‌مندی جدید',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('لغو'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  if (newInterest.isNotEmpty) {
                    _interests.add(newInterest);
                  }
                });
                Navigator.of(context).pop();
              },
              child: const Text('افزودن'),
            ),
          ],
        );
      },
    );
  }

  void _saveChanges(BuildContext context) {
    
    String updatedAboutMe = _aboutMeController.text;
    int updatedWeight = int.tryParse(_weightController.text) ?? 0;
    int updatedHeight = int.tryParse(_heightController.text) ?? 0;
    int updatedIntelligence =
        int.tryParse(_intelligenceController.text) ?? 0;

    
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Center(child: Text('تغییرات با موفقیت ذخیره شدند'))),
    );

    
    Navigator.pop(context, {
      'aboutMe': updatedAboutMe,
      'weight': updatedWeight,
      'height': updatedHeight,
      'intelligence': updatedIntelligence,
      'interests': _interests,
    });
  }
}
