import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/view/main/index.dart';
import '../../theme/styles.dart';
import 'widgets/custom_button.dart';

class Auth extends StatelessWidget {
  static const String id = 'auth';

  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(defSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome to mosques guide app', style: kSecTitleStyle.copyWith(color: primaryColor)),
                Text('Please choose a registration method',
                    style: kCaptionTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold)),
                const SizedBox(height: defSpacing * 1.5),
                CustomButton('Google', background: gmailColor, onPressed: () {}),
                const SizedBox(height: defSpacing / 2),
                CustomButton('Continue without registration', textColor: greyColor, background: kLight, onPressed: () {
                  Get.toNamed(Main.id);
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
