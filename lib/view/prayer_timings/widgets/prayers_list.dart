import 'package:flutter/material.dart';
import '../../../shared/consts.dart';
import 'prayer_item.dart';

class PrayersList extends StatelessWidget {
  const PrayersList({Key? key, required this.data}) : super(key: key);

  final Map data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...Prayers.values.map((prayer) {
          // Todo: Convert time to 12-hrs system
          String time = data[prayer.name] ?? '00:00';
          return PrayerItem(name: prayer.name, time: time);
        }).toList()
      ],
    );
  }
}
