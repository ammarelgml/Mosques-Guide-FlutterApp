import 'package:flutter/material.dart';

class LanguageBtn extends StatelessWidget {
  // const LanguageBtn({Key? key}) : super(key: key);
  final String title;
  const LanguageBtn({required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Ink(
        width: 160,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: const Color(0xff007E6A),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
