/*
 * Copyright (c) 2020 .
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/ui.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.onSaved,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.initialValue,
    this.hintText,
    this.errorText,
    this.iconData,
    this.labelText,
    this.obscureText,
    this.suffixIcon,
    this.isFirst=false,
    this.isLast=false,
    this.isReview=false,
    this.style,
    this.textAlign,
    this.suffix,
    this.pick=false,
    this.white=false,
    this.hide1=false,
    this.onFieldSubmitted
  }) : super(key: key);

  final FormFieldSetter<String> onSaved;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Function(String)? onFieldSubmitted;
  final String? initialValue;
  final String? hintText;
  final String? errorText;
  final TextAlign? textAlign;
  final String? labelText;
  final TextStyle? style;
  final IconData? iconData;
  final bool? obscureText;
  final bool? isFirst;
  final bool? isLast;
  final bool? isReview;
  final Widget? suffixIcon;
  final Widget? suffix;
  final bool? pick;
  final bool? white;
  final bool? hide1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:(isReview!)?10:  20, bottom:(isFirst!)?0: 14, left: 20, right: 20),
      margin: EdgeInsets.only(left: 20, right: 20, top:(isReview!)?0: topMargin, bottom: bottomMargin),
      decoration: BoxDecoration(
          color:(pick!)?(white!)?Get.theme.cardColor.withOpacity(0.3):Get.theme.primaryColorLight.withAlpha(150): (white!)?Get.theme.cardColor:Get.theme.primaryColorLight.withOpacity(1),
          borderRadius: buildBorderRadius,
          boxShadow: [
            BoxShadow(color: Get.theme.focusColor.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 5)),
          ],
       //  border: Border.all(color: Get.theme.focusColor.withOpacity(0.05))
      ),
      child:(hide1!)?Container(): Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(

            labelText ?? "",
            style:(pick!)?Get.textTheme.bodyText1!.merge(const TextStyle(color: Colors.black)): Get.textTheme.bodyText1!.merge(const TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
            textAlign: textAlign ?? TextAlign.start,
          ),
          const SizedBox(height: 10,),
          (pick!)?
          Container(
            // padding: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Get.theme.cardColor,
              border: Border.all(color: Colors.white70,width: 1)
            ),
            child: TextFormField(

              keyboardType: keyboardType ?? TextInputType.text,
              onSaved: onSaved,
              onChanged: onChanged,
              validator: validator,
              initialValue: initialValue ?? '',
              style: style ?? Get.textTheme.bodyText2,
              obscureText: obscureText ?? false,
              textAlign: textAlign ?? TextAlign.start,
              decoration: Ui.getInputDecoration(
                hintText: hintText ?? '',
                iconData: iconData,
                suffixIcon: suffixIcon,
                suffix: suffix,
                errorText: errorText,
              ),
            ),
          ):
          TextFormField(
            onFieldSubmitted: (val){
              if(onFieldSubmitted!=null)
                  onFieldSubmitted!(val);
              print(val+"   llll");
            },
            autofocus: isReview!?true:false ,
            maxLines: isReview!?10:1,
            keyboardType: keyboardType ?? TextInputType.text,
            onSaved: onSaved,
            onChanged: onChanged,
            validator: validator,
            initialValue: initialValue ?? '',
            style: style ?? Get.textTheme.bodyText2,
            obscureText: obscureText ?? false,
            textAlign: textAlign ?? TextAlign.start,
            decoration: Ui.getInputDecoration(
              hintText: hintText ?? '',
              iconData: iconData,
              suffixIcon: suffixIcon,
              suffix: suffix,
              errorText: errorText,
            ),
          ),
        ],
      ),
    );
  }

  BorderRadius get buildBorderRadius {
    if (isFirst != null && isFirst!) {
      return const BorderRadius.vertical(top: const Radius.circular(10));
    }
    if (isLast != null && isLast!) {
      return const BorderRadius.vertical(bottom: const Radius.circular(10));
    }
    if (isFirst != null && !isFirst! && isLast != null && !isLast!) {
      return const BorderRadius.all(const Radius.circular(0));
    }
    return const BorderRadius.all(const Radius.circular(10));
  }

  double get topMargin {
    if ((isFirst != null && isFirst!)) {
      return 20;
    } else if (isFirst == null) {
      return 20;
    } else {
      return 0;
    }
  }

  double get bottomMargin {
    if ((isLast != null && isLast!)) {
      return 10;
    } else if (isLast == null) {
      return 10;
    } else {
      return 0;
    }
  }
}
