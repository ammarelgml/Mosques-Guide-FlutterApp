import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller.dart';
import '../widgets/text_field_widget.dart';

class ProfileInfView extends GetView<ProfileController> {
  const ProfileInfView({Key? key}) : super(key: key);

  // final bool hideAppBar;
  //
  // ProfileView({this.hideAppBar = false}) {
  //   // controller.profileForm = new GlobalKey<FormState>();
  // }

  @override
  Widget build(BuildContext context) {
    //  final controller2 = Get.find<AuthController>();
    controller.profileForm = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "الحساب".tr,
            style: context.textTheme.headline6,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Get.theme.hintColor),
            onPressed: () => Get.back(),
          ),
          elevation: 0,
        ),
        bottomNavigationBar: Container(
          // height: 63,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            // color: Get.theme.primaryColorLight.withOpacity(0.4),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            // boxShadow: [
            //   BoxShadow(color: Get.theme.primaryColor.withOpacity(0.3), blurRadius: 10, offset: Offset(0, -5)),
            // ],
          ),
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    controller.updateProfile();
                  },
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                  color: Get.theme.primaryColor,
                  child: Text("حفظ".tr,
                      style: Get.textTheme.bodyText2!.merge(TextStyle(
                          color: Get.theme.cardColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold))),
                  elevation: 10,
                  hoverElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                ),
              ),
            ],
          ).paddingSymmetric(vertical: 10, horizontal: 20),
        ),
        body: Form(
          key: controller.profileForm,
          child: ListView(
            primary: true,
            children: [
              Text("تعديل الحساب".tr, style: Get.textTheme.headline5)
                  .paddingOnly(top: 25, bottom: 0, right: 22, left: 22),
              Text("قم بتغيير التفاصيل التالية واحفظها".tr,
                      style: Get.textTheme.caption)
                  .paddingSymmetric(horizontal: 22, vertical: 5),
              const SizedBox(
                height: 20,
              ),
              TextFieldWidget(
                onSaved: (input) => controller.user.value.name = input,
                validator: (input) => input!.length < 3
                    ? "Should be more than 3 letters".tr
                    : null,
                initialValue: controller.user.value.name,
                hintText: "محمد حسبو".tr,
                labelText: "الاسم".tr,
                iconData: Icons.person_outline,
                isLast: true,
                isFirst: true,
              ),
              TextFieldWidget(
                onSaved: (input) => controller.user.value.email = input,
                validator: (input) =>
                    !input!.contains('@') ? "Should be a valid email" : null,
                initialValue: controller.user.value.email,
                hintText: "Mohamed@gmail.com",
                labelText: "البريد الالكتروني".tr,
                iconData: Icons.alternate_email,
                isLast: true,
                isFirst: true,
              ),
            ],
          ),
        ));
  }
}
