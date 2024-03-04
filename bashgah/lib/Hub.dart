import 'package:flutter/material.dart';
import 'consts.dart';
import 'settings.dart';
import 'workouts.dart';

class MainHub extends StatefulWidget {
  @override
  _MainHubState createState() => _MainHubState();
}

class _MainHubState extends State<MainHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحه اصلی', style: TextStyle(color: sefid)),
        backgroundColor: avalie,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: sefid),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        actions: [

          IconButton(
            icon: Icon(Icons.settings, color: sefid),
            onPressed: () {


              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SettingsPage(),
              ));

              print('Settings icon pressed!');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.normal),
        child: Container(
          color: avalie,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Streak_Bar("شنبه", "Yes"),
                  Streak_Bar("یک شنبه", "No"),
                  Streak_Bar("دو شنبه", "Today"),
                  Streak_Bar("سه شنبه", "future"),
                  Streak_Bar("چهارشنبه", "future"),
                ],
              ),
              SizedBox(height: 10.0),
              Divider(thickness: 0.4),
              SizedBox(
                height: 10.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: sanavie,
                  borderRadius: BorderRadius.circular(21.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("../assets/vectors/Dumbbell.png"),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                        ),
                        Positioned(
                            top: 20,
                            right: 20,
                            child:
                                Image.asset("../assets/vectors/calorie.png")),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Text(
                            calories,
                            style: TextStyle(
                              color: sefid,
                              fontSize: 70,
                              fontFamily: 'NotoNaskhArabicMedium',
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 24,
                          left: 40,
                          child: Text(
                            "کالری",
                            style: TextStyle(
                              color: sefid,
                              fontSize: 18,
                              fontFamily: 'NotoNaskhArabicMedium',
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Divider(thickness: 0.4),
              SizedBox(
                height: 10.0,
              ),
              Workouts(
                  context, "سینه و شکم", "../assets/photos/sine.png", "sine"),
              SizedBox(
                height: 10,
              ),
              Workouts(
                  context, "بازو و ساعد", "../assets/photos/bazo.png", "bazo"),
              SizedBox(
                height: 10,
              ),
              Workouts(context, "ران و ساق", "../assets/photos/pa.png", "pa"),
              SizedBox(
                height: 10,
              ),
              Workouts(
                  context, "  کل بدن", "../assets/photos/badan.png", "badan"),
            ]),
          ),
        ),
      ),
    );
  }
}

Widget Workouts(BuildContext context, String part, String img, String id) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(21),
      color: gray,
    ),
    child: InkWell(
      onTap: () {

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WorkoutDetailPage(id),
        ));
      },
      child: Row(
        children: [
          Image.asset(img),
          SizedBox(width: 40),
          Expanded(
            child: Text(
              part,
              style: TextStyle(
                color: sefid,
                fontSize: 32,
                fontFamily: 'NotoNaskhArabicMedium',
              ),
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.end,
      ),
    ),
  );
}

Widget Streak_Bar(String roz, String vaziat) {
  final double defaultWidth = 47;
  final double defaultHeight = 70;
  double width_con = defaultWidth;
  double height_con = defaultHeight;

  BoxDecoration? decoration;
  Column? cart_details;

  switch (vaziat) {
    case "Today":
      width_con = 54;
      height_con = 80;
      cart_details = _buildColumn("../assets/Icons/clock.png", roz, 40);
      decoration = _buildBoxDecoration(sanavie);
      break;
    case "No":
      cart_details = _buildColumn("../assets/Icons/cancel.png", roz, 40);
      decoration = _buildBoxDecoration(gray);
      break;
    case "Yes":
      cart_details = _buildColumn("../assets/Icons/check.png", roz, 38);
      decoration = _buildBoxDecoration(gray);
      break;
    default:
      cart_details = _buildColumn("../assets/Icons/clock.png", roz, 38);
      decoration = _buildBoxDecoration(gray);
  }

  return Container(
    width: width_con,
    height: height_con,
    decoration: decoration,
    child: cart_details,
  );
}

Column _buildColumn(String assetPath, String text, double imageSize) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(assetPath, width: imageSize, height: imageSize),
      Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: sefid,
          fontFamily: 'NotoNaskhArabicMedium'
        ),
      ),
    ],
  );
}

BoxDecoration _buildBoxDecoration(Color color) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(10.0),
  );
}
