import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/view/auth/index.dart';
import '../../theme/styles.dart';
import 'widgets/custom_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);
  static const String id = 'welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(defSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome to mosques guide app', style: kSecTitleStyle.copyWith(color: primaryColor)),
                Text('Please choose the language of the app',
                    style: kCaptionTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
                const SizedBox(height: defSpacing),
                _languagesButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _languagesButtons() {
    return Row(
      children: [
        CustomButton('English', onPressed: () {
          Get.toNamed(Auth.id);
        }),
        const SizedBox(width: defSpacing),
        CustomButton('عربي', onPressed: () {
          Get.toNamed(Auth.id);
        }, padding: defSpacing / 2)
      ],
    );
  }
}
