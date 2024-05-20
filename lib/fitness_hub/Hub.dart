// // import 'package:fitness/fitness_hub/streak_bar/week_day.dart';
// // import 'package:flutter/material.dart';
// // import '../code_assets.dart/consts.dart';
// // import '../settings_Page/settings.dart';
// // import '../workouts/workouts.dart';

// // class MainHub extends StatefulWidget {
// //   @override
// //   _MainHubState createState() => _MainHubState();
// // }

// // class _MainHubState extends State<MainHub> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('صفحه اصلی', style: TextStyle(color: sefid)),
// //         backgroundColor: avalie,
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back, color: sefid),
// //           onPressed: () {
// //             Navigator.of(context).pop();
// //           },
// //         ),
// //         centerTitle: true,
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.settings, color: sefid),
// //             onPressed: () {
// //               Navigator.of(context).push(MaterialPageRoute(
// //                 builder: (context) => SettingsPage(),
// //               ));

// //               print('Settings icon pressed!');
// //             },
// //           ),
// //         ],
// //       ),
// //       body: SingleChildScrollView(
// //         physics: BouncingScrollPhysics(
// //             decelerationRate: ScrollDecelerationRate.normal),
// //         child: Container(
// //           color: avalie,
// //           child: Padding(
// //             padding: const EdgeInsets.all(30),
// //             child: Column(children: [
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                 crossAxisAlignment: CrossAxisAlignment.end,
// //                 children: [
// //                   Streak_Bar(getCurrentWeekDay(), "Yes"),
// //                   Streak_Bar(getCurrentWeekDay(), "No"),
// //                   Streak_Bar(getCurrentWeekDay(), "Today"),
// //                   Streak_Bar(getCurrentWeekDay(), "future"),
// //                   Streak_Bar(getCurrentWeekDay(), "future"),
// //                 ],
// //               ),
// //               SizedBox(height: 10.0),
// //               Divider(thickness: 0.4),
// //               SizedBox(
// //                 height: 10.0,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                   color: sanavie,
// //                   borderRadius: BorderRadius.circular(21.0),
// //                 ),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Image.asset("../assets/vectors/Dumbbell.png"),
// //                     Stack(
// //                       alignment: Alignment.center,
// //                       children: [
// //                         Container(
// //                           height: 150,
// //                           width: 150,
// //                         ),
// //                         Positioned(
// //                             top: 20,
// //                             right: 20,
// //                             child:
// //                                 Image.asset("../assets/vectors/calorie.png")),
// //                         Positioned(
// //                           top: 20,
// //                           left: 20,
// //                           child: Text(
// //                             calories,
// //                             style: TextStyle(
// //                               color: sefid,
// //                               fontSize: 70,
// //                               fontFamily: 'NotoNaskhArabicMedium',
// //                             ),
// //                           ),
// //                         ),
// //                         Positioned(
// //                           bottom: 24,
// //                           left: 40,
// //                           child: Text(
// //                             "کالری",
// //                             style: TextStyle(
// //                               color: sefid,
// //                               fontSize: 18,
// //                               fontFamily: 'NotoNaskhArabicMedium',
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     )
// //                   ],
// //                 ),
// //               ),
// //               SizedBox(height: 10.0),
// //               Divider(thickness: 0.4),
// //               SizedBox(
// //                 height: 10.0,
// //               ),
// //               Workouts(
// //                   context, "سینه و شکم", "../assets/photos/sine.png", "sine"),
// //               SizedBox(
// //                 height: 10,
// //               ),
// //               Workouts(
// //                   context, "بازو و ساعد", "../assets/photos/bazo.png", "bazo"),
// //               SizedBox(
// //                 height: 10,
// //               ),
// //               Workouts(context, "ران و ساق", "../assets/photos/pa.png", "pa"),
// //               SizedBox(
// //                 height: 10,
// //               ),
// //               Workouts(
// //                   context, "  کل بدن", "../assets/photos/badan.png", "badan"),
// //             ]),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // Widget Workouts(BuildContext context, String part, String img, String id) {
// //   return Container(
// //     decoration: BoxDecoration(
// //       borderRadius: BorderRadius.circular(21),
// //       color: gray,
// //     ),
// //     child: InkWell(
// //       onTap: () {
// //         Navigator.of(context).push(MaterialPageRoute(
// //           builder: (context) => WorkoutDetailPage(id),
// //         ));
// //       },
// //       child: Row(
// //         children: [
// //           Image.asset(img),
// //           SizedBox(width: 40),
// //           Expanded(
// //             child: Text(
// //               part,
// //               style: TextStyle(
// //                 color: sefid,
// //                 fontSize: 32,
// //                 fontFamily: 'NotoNaskhArabicMedium',
// //               ),
// //             ),
// //           ),
// //         ],
// //         mainAxisAlignment: MainAxisAlignment.end,
// //       ),
// //     ),
// //   );
// // }

// // Widget Streak_Bar(String roz, String vaziat) {
// //   final double defaultWidth = 47;
// //   final double defaultHeight = 70;
// //   double width_con = defaultWidth;
// //   double height_con = defaultHeight;

// //   BoxDecoration? decoration;
// //   Column? cart_details;

// //   switch (vaziat) {
// //     case "Today":
// //       width_con = 54;
// //       height_con = 80;
// //       cart_details = _buildColumn("../assets/Icons/clock.png", roz, 40);
// //       decoration = _buildBoxDecoration(sanavie);
// //       break;
// //     case "No":
// //       cart_details = _buildColumn("../assets/Icons/cancel.png", roz, 40);
// //       decoration = _buildBoxDecoration(gray);
// //       break;
// //     case "Yes":
// //       cart_details = _buildColumn("../assets/Icons/check.png", roz, 38);
// //       decoration = _buildBoxDecoration(gray);
// //       break;
// //     default:
// //       cart_details = _buildColumn("../assets/Icons/clock.png", roz, 38);
// //       decoration = _buildBoxDecoration(gray);
// //   }

// //   return Container(
// //     width: width_con,
// //     height: height_con,
// //     decoration: decoration,
// //     child: cart_details,
// //   );
// // }

// // Column _buildColumn(String assetPath, String text, double imageSize) {
// //   return Column(
// //     mainAxisAlignment: MainAxisAlignment.center,
// //     children: [
// //       Image.asset(assetPath, width: imageSize, height: imageSize),
// //       Text(
// //         text,
// //         style: TextStyle(
// //             fontSize: 12, color: sefid, fontFamily: 'NotoNaskhArabicMedium'),
// //       ),
// //     ],
// //   );
// // }

// // BoxDecoration _buildBoxDecoration(Color color) {
// //   return BoxDecoration(
// //     color: color,
// //     borderRadius: BorderRadius.circular(10.0),
// //   );
// // }




















// import 'package:flutter/material.dart';
// import 'package:fitness/fitness_hub/fitness_hub.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool isDarkMode = false;

//   void toggleDarkMode() {
//     setState(() {
//       isDarkMode = !isDarkMode;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    

//     return MaterialApp(
//       theme: ThemeData(
//         brightness: Brightness.light,
//         textTheme: const TextTheme(
//           bodyLarge: TextStyle(fontFamily: 'iransans', color: Colors.black),
//           bodyMedium: TextStyle(fontFamily: 'Iransans'),
//           headlineLarge: TextStyle(fontFamily: 'Iransans'),
//         ),
//         iconTheme: IconThemeData(color: Colors.black),
//         colorScheme: lightColorScheme,
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         textTheme: const TextTheme(
//           bodyLarge: TextStyle(fontFamily: 'iransans', color: Colors.white),
//           bodyMedium: TextStyle(fontFamily: 'Iransans', color: Colors.white),
//           headlineLarge: TextStyle(fontFamily: 'Iransans', color: Colors.white),
//         ),
//         iconTheme: IconThemeData(color: Colors.white),
//         colorScheme: darkColorScheme,
//       ),
//       themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
//       home: Fitness_Hub(),
//     );
//   }
// }




// final ColorScheme lightColorScheme = ColorScheme(
//       brightness: Brightness.light,
//       primary: Colors.blue,
//       secondary: Colors.green,
//       error: Colors.red,
//       surface: Colors.white,
//       background: Colors.white,
//       onPrimary: Colors.white,
//       onSecondary: Colors.white,
//       onError: Colors.white,
//       onBackground: Colors.black,
//       onSurface: Colors.black,
//     );

//     final ColorScheme darkColorScheme = ColorScheme(
//       brightness: Brightness.dark,
//       primary: Colors.teal,
//       secondary: Colors.lightGreen,
//       error: Colors.red,
//       surface: Colors.grey[800]!,
//       background: Colors.grey[900]!,
//       onPrimary: Colors.black,
//       onSecondary: Colors.black,
//       onError: Colors.white,
//       onBackground: Colors.white,
//       onSurface: Colors.white,
//     );
