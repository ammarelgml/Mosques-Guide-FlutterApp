import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../theme/styles.dart';

class PrayerItem extends StatelessWidget {
  const PrayerItem({Key? key, required this.name, required this.time}) : super(key: key);

  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(defSpacing / 2),
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: SvgPicture.asset('assets/images/svgs/$name.svg'),
          foregroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        title: Text(name, style: kSecTitleStyle.copyWith(fontSize: 16)),
        trailing: Text(time, style: kSmallTextStyle.copyWith(fontSize: 16)),
      ),
    );
  }
}
