import 'package:flutter/material.dart';

class ContactTextField extends StatelessWidget {
  final String labelTxt;
  final int minLines;
  final int maxLines;
  TextEditingController controller;
  ContactTextField({
    required this.labelTxt,
    required this.minLines,
    required this.maxLines,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            controller: controller,
            textAlign: TextAlign.right,
            minLines: minLines,
            maxLines: maxLines,
            cursorColor: const Color(0xff2D3437),
            decoration: InputDecoration(
              labelText: labelTxt,
              labelStyle: const TextStyle(color: Color(0xff2D3437)),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      height: minLines == 1 ? 80 : null,
    );
  }
}
