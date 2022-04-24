import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/theme/styles.dart';
import 'package:mosques_guide_app/view/directions/index.dart';
import '../../../model/mosque.dart';

class MosqueDataSheet extends StatelessWidget {
  const MosqueDataSheet({Key? key, required this.mosque, this.hasWomanArea = true}) : super(key: key);
  final Mosque mosque;
  final bool hasWomanArea;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: defSpacing * 3, right: defSpacing, left: defSpacing),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(defSpacing),
            topLeft: Radius.circular(defSpacing),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/svgs/mosque-2.svg'),
            _mosqueName(mosque.name),
            _showIfAreaForMenAndWomen(hasWomanArea),
            _distanceAndExpectedTime(),
            // Mosque Address
            Text(mosque.address ?? '14 Mostafa Street. Branching from Al-Hijaz Street',
                style: kSmallTextStyle.copyWith(color: kLightGrey)),
            const SizedBox(height: defSpacing * .75),
            _divider(),
            const SizedBox(height: defSpacing * .75), // Mosque Details
            _mosqueDetails(),
            // Button: Go to direction
            _goButton(() {
              Get.toNamed('/${Directions.id}');
            }),
          ],
        ));
  }
}

class TitleDescWidget extends StatelessWidget {
  const TitleDescWidget({Key? key, required this.title, required this.asset, required this.desc}) : super(key: key);

  final String title;
  final String desc;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defSpacing / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/images/svgs/$asset.svg'),
          const SizedBox(width: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: kTitleStyle.copyWith(color: Colors.black, fontSize: 16)),
              const SizedBox(height: 2),
              Text(desc, style: kCaptionTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}

_mosqueName(name) => Padding(
      padding: const EdgeInsets.all(defSpacing),
      child: Text(name ?? 'Al Rahman Mosque', style: kContentStyle.copyWith(fontWeight: FontWeight.bold)),
    );

_divider() => Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey[200],
    );

_showIfAreaForMenAndWomen(hasWomanArea) => Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SvgPicture.asset('assets/images/svgs/man.svg'),
      const SizedBox(width: defSpacing),
      if (hasWomanArea) SvgPicture.asset('assets/images/svgs/woman.svg'),
    ]);

_distanceAndExpectedTime() => Padding(
      padding: const EdgeInsets.all(defSpacing / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          TitleDescWidget(title: '3.7 km', asset: 'Distance Icon', desc: 'Distance'),
          TitleDescWidget(title: '04:36 PM', asset: 'Clock Icon', desc: 'The expected time'),
        ],
      ),
    );

_mosqueDetails() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        // Todo: 2
        // Fill real data
        TitleDescWidget(title: 'Status', asset: 'mosque-1', desc: 'Open'),
        TitleDescWidget(title: 'Available', asset: 'mosque-1', desc: 'Friday prayer'),
        TitleDescWidget(title: 'Not found', asset: 'mosque-1', desc: 'Religious lessons'),
      ],
    );

_goButton(pressed) => RawMaterialButton(
      onPressed: () {
        pressed();
      },
      elevation: 2.0,
      fillColor: const Color(0xFF71C066),
      child: const Icon(Icons.arrow_forward_outlined, color: Colors.white),
      padding: const EdgeInsets.all(defSpacing * .75),
      shape: const CircleBorder(),
    );
