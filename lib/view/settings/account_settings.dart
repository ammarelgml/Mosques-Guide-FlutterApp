import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contact_us/widgets/contact_textfield.dart';

class AccountSettings extends StatelessWidget {
  final _nameCtrl = TextEditingController();
  final _mailCtrl = TextEditingController();

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
                    "تعديل الحساب",
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
                      ContactTextField(
                        labelTxt: "الاسم",
                        minLines: 1,
                        maxLines: 1,
                        controller: _nameCtrl,
                      ),
                      const SizedBox(height: 15.5),
                      ContactTextField(
                        labelTxt: "البريد الالكتروني",
                        minLines: 1,
                        maxLines: 1,
                        controller: _mailCtrl,
                      ),
                      const SizedBox(height: 15.5),
                      MaterialButton(
                        onPressed: () {
                          print("name:${_nameCtrl.value.text}");
                          print("Mail:${_mailCtrl.value.text}");
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
