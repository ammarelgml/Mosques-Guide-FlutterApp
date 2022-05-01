import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/view/settings/widgets/my_textfield.dart';

class PasswordSettings extends StatelessWidget {
  final _currentPwd = TextEditingController();
  final _newPwd = TextEditingController();
  final _confirmPwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Text(
                    "تعديل كلمة المرور",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Get.toNamed("/settings");
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      MyTextField(
                        labelTxt: "كلمة المرور الحالية",
                        controller: _currentPwd,
                      ),
                      const SizedBox(height: 15.5),
                      MyTextField(
                        labelTxt: "كلمة المرور الجديدة",
                        controller: _newPwd,
                      ),
                      const SizedBox(height: 15.5),
                      MyTextField(
                        labelTxt: "تأكيد كلمة المرور",
                        controller: _confirmPwd,
                      ),
                      const SizedBox(height: 15.5),
                      MaterialButton(
                        onPressed: () {
                          print("current Password:${_currentPwd.value.text}");
                          print("new Password:${_newPwd.value.text}");
                          print("Confirm Password:${_confirmPwd.value.text}");
                        },
                        child: Ink(
                          padding: const EdgeInsets.all(8.0),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: const Color(0xff007E6A),
                          ),
                          child: const Text(
                            "حفظ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 0.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
