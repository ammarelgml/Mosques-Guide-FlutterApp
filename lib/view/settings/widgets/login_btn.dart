import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: login,
      child: const Text(
        "تسجيل الدخول",
        style: TextStyle(
            color: Color(0xff007E6A),
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
    );
  }

  login() {
    print("Login Btn");
  }
}
