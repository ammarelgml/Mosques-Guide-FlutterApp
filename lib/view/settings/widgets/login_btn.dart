import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: login,
        // Change Button Text and Color if Logged In
        child: const Text(
          "تسجيل الدخول", //isConnected ? "تسجيل الخروج" : "تسجيل الدخول",
          style: TextStyle(
              color: Color(
                  0xff007E6A), // isConnected ? Color(0xff007E6A) : Color(0xffD85454),
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }

  login() {
    print("Login Btn");
  }
}
