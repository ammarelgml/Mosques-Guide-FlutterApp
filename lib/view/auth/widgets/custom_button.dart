import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../theme/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.text,
      {required this.onPressed, this.textColor = Colors.white, this.background = primaryColor, Key? key})
      : super(key: key);

  final String text;
  final Color textColor;
  final Color background;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          onPressed();
        },
        icon: text == 'Google' ? SvgPicture.asset('assets/images/svgs/gmail.svg') : const SizedBox(),
        label: Text(text, style: kSecTitleStyle.copyWith(fontSize: 16, color: textColor)),
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(vertical: defSpacing / 2)),
          shape:
              MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(defSpacing * 1.5))),
          backgroundColor: MaterialStateProperty.all(background),
        ));
  }
}
