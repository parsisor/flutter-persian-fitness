import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';

enum StreakStatus { Yes, No, Today, NotArrived }


class StreakBar extends StatelessWidget {
  final String roz;
  final StreakStatus vaziat;

  StreakBar({required this.roz, required this.vaziat});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).dividerColor),
        borderRadius: BorderRadius.circular(10.0),
        color: Theme.of(context).cardColor,
      ),
      child: Stack(
        children: [
          _buildIcon(context),
          Positioned(
            bottom: 4,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                roz,
                style: TextStyle(
                  fontSize: 10,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    Color iconColor;
    IconData iconData;

    switch (vaziat) {
      case StreakStatus.Yes:
        iconData = Icons.check_circle_outline;
        iconColor = Colors.green;
        break;
      case StreakStatus.No:
        iconData = Icons.error_outline;
        iconColor = Colors.red;
        break;
      case StreakStatus.Today:
        iconData = Icons.access_time;
        iconColor = Colors.blue;
        break;
      case StreakStatus.NotArrived:
        iconData = Icons.event_busy;
        iconColor = Colors.grey;
        break;
      default:
        return SizedBox.shrink();
    }

    return Positioned(
      top: 4,
      left: 0,
      right: 0,
      child: Icon(
        iconData,
        size: 24,
        color: iconColor,
      ),
    );
  }
}

class StreakBarRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // تاریخ جاری را به دست آورید
    final now = Jalali.now();
    final currentDayIndex = now.weekDay;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 1; i <= 7; i++)
            StreakBar(
              roz: getCurrentWeekDay(i),
              vaziat: _getStreakStatus(i, currentDayIndex),
            ),
        ],
      ),
    );
  }

  StreakStatus _getStreakStatus(int dayIndex, int currentDay) {
    if (dayIndex == currentDay) {
      return StreakStatus.Today;
    } else if (dayIndex < currentDay) {
      return Random().nextBool() ? StreakStatus.Yes : StreakStatus.No;
    } else {
      return StreakStatus.NotArrived;
    }
  }

  String getCurrentWeekDay(int day) {
    switch (day) {
      case 1:
        return 'شنبه';
      case 2:
        return 'یک‌شنبه';
      case 3:
        return 'دوشنبه';
      case 4:
        return 'سه‌شنبه';
      case 5:
        return 'چهارشنبه';
      case 6:
        return 'پنج‌شنبه';
      case 7:
        return 'جمعه';
      default:
        return 'نامشخص';
    }
  }
}

