import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mosques_guide_app/routes.dart';

// import '../../../models/media_model.dart';
// import '../../global_widgets/image_field_widget.dart';
// import '../../global_widgets/text_field_widget.dart';
import '../controllers/profile_controller.dart';
import '../widget/text_field_widget.dart';

class PassWordView extends GetView<ProfileController> {
 @override
  Widget build(BuildContext context) {
    //  final controller2 = Get.find<AuthController>();
    controller.profileForm = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "كلمة السر".tr,
            style: context.textTheme.headline6,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Get.theme.hintColor),
            // onPressed: () => Get.back(),
            onPressed: () => Get.toNamed(Routes.PROFILE_INF),
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
                    controller.saveProfileForm();
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
              Text("تعديل كلمة المرور".tr, style: Get.textTheme.headline5)
                  .paddingOnly(top: 25, bottom: 0, right: 22, left: 22),
              Text(
                      "املأ كلمة المرور الحالية واكتب كلمة المرور الجديدة وقم بتأكيدها"
                          .tr,
                      style: Get.textTheme.caption)
                  .paddingSymmetric(horizontal: 22, vertical: 5),
              Obx(() {
                // TODO verify old password
                return TextFieldWidget(
                  labelText: "كلمة المرور الحالية".tr,
                  hintText: "••••••••••••".tr,
                  onSaved: (input) => controller.oldPassword.value = input!,
                  onChanged: (input) => controller.oldPassword.value = input,
                  validator: (input) => input!.isNotEmpty && input.length < 3
                      ? "Should be more than 3 letters".tr
                      : null,
                  initialValue: controller.oldPassword.value,
                  obscureText: controller.hidePassword.value,
                  iconData: Icons.lock_outline,
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.hidePassword.value =
                          !controller.hidePassword.value;
                    },
                    color: Theme.of(context).focusColor,
                    icon: Icon(controller.hidePassword.value
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                  ),
                  isFirst: true,
                  isLast: false,
                );
              }),
              Obx(() {
                return TextFieldWidget(
                  labelText: "كلمة المرور الجديدة".tr,
                  hintText: "••••••••••••".tr,
                  onSaved: (input) => controller.newPassword.value = input!,
                  onChanged: (input) => controller.newPassword.value = input,
                  validator: (input) {
                    if (input!.isNotEmpty && input.length < 3) {
                      return "Should be more than 3 letters".tr;
                    } else if (input != controller.confirmPassword.value) {
                      return "Passwords do not match".tr;
                    } else {
                      return null;
                    }
                  },
                  initialValue: controller.newPassword.value,
                  obscureText: controller.hidePassword.value,
                  iconData: Icons.lock_outline,
                  keyboardType: TextInputType.visiblePassword,
                  isFirst: false,
                  isLast: false,
                );
              }),
              Obx(() {
                return TextFieldWidget(
                  labelText: "تأكيد كلمة المرور".tr,
                  hintText: "••••••••••••".tr,
                  onSaved: (input) => controller.confirmPassword.value = input!,
                  onChanged: (input) =>
                      controller.confirmPassword.value = input,
                  validator: (input) {
                    if (input!.isNotEmpty && input.length < 3) {
                      return "Should be more than 3 letters".tr;
                    } else if (input != controller.newPassword.value) {
                      return "Passwords do not match".tr;
                    } else {
                      return null;
                    }
                  },
                  initialValue: controller.confirmPassword.value,
                  obscureText: controller.hidePassword.value,
                  iconData: Icons.lock_outline,
                  keyboardType: TextInputType.visiblePassword,
                  isFirst: false,
                  isLast: true,
                );
              }),
            ],
          ),
        ));
  }
}
