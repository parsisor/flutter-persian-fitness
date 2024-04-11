import 'package:fitness/code_assets.dart/consts.dart';
import 'package:flutter/material.dart';

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
            fontSize: 12, color: sefid, fontFamily: 'NotoNaskhArabicMedium'),
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
