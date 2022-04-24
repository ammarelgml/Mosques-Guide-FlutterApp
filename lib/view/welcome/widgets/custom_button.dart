import 'package:flutter/material.dart';
import '../../../theme/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.text, {required this.onPressed, this.padding = defSpacing * 0.75, Key? key})
      : super(key: key);

  final String text;
  final double padding;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            onPressed();
          },
          child: Text(text, style: kSecTitleStyle.copyWith(fontSize: 16)),
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: padding)),
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(defSpacing * 1.5))),
            backgroundColor: MaterialStateProperty.all(primaryColor),
          )),
    );
  }
}
