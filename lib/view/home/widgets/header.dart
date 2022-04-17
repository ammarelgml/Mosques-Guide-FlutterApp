import 'package:flutter/material.dart';
import '../../../theme/styles.dart';
import 'custom_search_field.dart';

final fakeMosquesList = [
  'Al-Salam Mosque',
  'Omar Bn El-Khatab Mosque',
  'Abo Bakr Mosque',
];

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defSpacing * .75),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset('assets/images/title_icon.png'),
          const SizedBox(height: defSpacing / 2),
          const Text('Next prayer time', style: kSmallTextStyle),
          const SizedBox(height: defSpacing / 4),
          const Text('05:15 AM', style: kTitleStyle),
          const SizedBox(height: defSpacing / 4),
          const Text('Al-fajr prayer', style: kSmallTextStyle),
          const SizedBox(height: defSpacing * .75),
          CustomSearchField(controller: searchController, list: fakeMosquesList, onTap: () {}),
        ],
      ),
    );
  }
}
