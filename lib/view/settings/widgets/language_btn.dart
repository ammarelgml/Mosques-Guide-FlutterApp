import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageBtn extends StatefulWidget {
  String langSelected;
  LanguageBtn({this.langSelected = ""});

  @override
  State<LanguageBtn> createState() => _LanguageBtnState();
}

class _LanguageBtnState extends State<LanguageBtn> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: languageChange,
      child: Ink(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: const Color(0xffF5FAFC),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 14,
                ),
                const SizedBox(width: 30),
                Text(
                  widget.langSelected == "" ? "العربية" : widget.langSelected,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xff007E6A),
                  ),
                ),
              ],
            ),
            const Text(
              "اللغة",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    );
  }

  languageChange() {
    Get.bottomSheet(
      Container(
          height: 320,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            color: Color(0xffF5FAFC),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              // Logo
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/language.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              //text
              const Text(
                "اختر اللغة",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Ink(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: const Color(0xff007E6A),
                      ),
                      child: const Center(
                        child: Text(
                          "English",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        widget.langSelected = "English";
                      });
                      Get.back();
                    },
                  ),
                  MaterialButton(
                    child: Ink(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: const Color(0xff007E6A),
                      ),
                      child: const Center(
                        child: Text(
                          "العربية",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        widget.langSelected = "العربية";
                      });
                      Get.back();
                    },
                  ),
                ],
              )
            ],
          )),
      barrierColor: const Color(0xff000029).withOpacity(0.3),
      isDismissible: false,
      enableDrag: false,
    );
  }
}
