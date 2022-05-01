import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/ui.dart';
import '../../../model/user_model.dart';

class ProfileController extends GetxController {
  var user = User().obs;

  //var avatar = new Media().obs;
  final hidePassword = true.obs;
  final oldPassword = "".obs;
  final newPassword = "".obs;
  final confirmPassword = "".obs;

  // int idView=-1;
  final smsSent = "".obs;
  late GlobalKey<FormState> profileForm;

  // UserRepository _userRepository;
  //
  // ProfileController() {
  //   _userRepository = new UserRepository();
  // }

  @override
  void onInit() {
    // if (Get.arguments != null && Get.arguments is int) {
    //   //idView=Get.arguments as int;
    // }
    // idView=3;
    // user.value = Get.find<AuthService>().user.value;
    // avatar.value = new Media(id: user.value.avatar.id??"0");
    super.onInit();
  }

  // Future refreshProfile({bool showMessage}) async {
  //   await getUser();
  //   if (showMessage == true) {
  //     Get.showSnackbar(Ui.SuccessSnackBar(message: "List of faqs refreshed successfully".tr));
  //   }
  // }

  void saveProfileForm() async {
    Get.focusScope!.unfocus();
    if (profileForm.currentState!.validate()) {
      try {
        profileForm.currentState!.save();
        user.value.deviceToken = null;
        user.value.password = newPassword.value == confirmPassword.value
            ? newPassword.value
            : null;
        //  user.value.avatar.id = avatar.value.id;
        //  await _userRepository.sendCodeToPhone();
        //   Get.bottomSheet(
        //     PhoneVerificationBottomSheetWidget(),
        //     isScrollControlled: false,
        //   );
      } catch (e) {
        Get.showSnackbar(Ui.ErrorSnackBar(message: e.toString()));
      } finally {}
    } else {
      Get.showSnackbar(Ui.ErrorSnackBar(
          message: "There are errors in some fields please correct them!".tr));
    }
  }

  void updateProfile() async {
    Get.focusScope!.unfocus();
    if (profileForm.currentState!.validate()) {
      try {
        profileForm.currentState!.save();
        // user.value.deviceToken = null;
        // user.value.password = newPassword.value == confirmPassword.value ? newPassword.value : null;
        //    user.value.avatar.id = avatar.value.id;
        String r = "1";
        // String r=  await _userRepository.updateProfile(user.value);
        if (int.tryParse(r) == 1) {
          // await Get.find<FireBaseMessagingService>().setDeviceToken();
          // Get.find<AuthService>()
          //     .user.value = await _userRepository.loginv2(user.value,secondery:"jj");
          // Get.find<AuthService>()
          //     .user.refresh();
          Get.back();
        }

        // Get.bottomSheet(
        //   PhoneVerificationBottomSheetWidget(),
        //   isScrollControlled: false,
        // );
      } catch (e) {
        Get.showSnackbar(Ui.ErrorSnackBar(message: e.toString()));
      } finally {}
    } else {
      Get.showSnackbar(Ui.ErrorSnackBar(
          message: "There are errors in some fields please correct them!".tr));
    }
  }

  Future<void> verifyPhone() async {
    try {
      // await _userRepository.verifyPhone(smsSent.value);
      // user.value = await _userRepository.update(user.value);
      // Get.find<AuthService>().user.value = user.value;
      Get.back();
      Get.showSnackbar(
          Ui.SuccessSnackBar(message: "Profile saved successfully".tr));
    } catch (e) {
      Get.showSnackbar(Ui.ErrorSnackBar(message: e.toString()));
    }
  }

  void resetProfileForm() {
    // avatar.value = new Media(id: user.value.avatar.id);
    // profileForm.currentState.reset();
  }

  Future getUser() async {
    try {
      // user.value = await _userRepository.getCurrentUser();
      //user.value = Get.find<AuthService>().user.value;
    } catch (e) {
      Get.showSnackbar(Ui.ErrorSnackBar(message: e.toString()));
    }
  }

  void sendDiscusse() async {
    Get.focusScope!.unfocus();
    if (profileForm.currentState!.validate()) {
      try {
        profileForm.currentState!.save();
        //   await _userRepository.updateProfile(user.value);
        Get.back();
      } catch (e) {
        Get.showSnackbar(Ui.ErrorSnackBar(message: e.toString()));
      } finally {}
    } else {
      Get.showSnackbar(Ui.ErrorSnackBar(
          message: "There are errors in some fields please correct them!".tr));
    }
  }
}
