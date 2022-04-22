import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String labelTxt;
  late TextEditingController controller;
  MyTextField({
    required this.labelTxt,
    required this.controller,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextFormField(
            controller: widget.controller,
            textAlign: TextAlign.right,
            obscureText: _isObscure,
            cursorColor: const Color(0xff2D3437),
            decoration: InputDecoration(
              labelText: widget.labelTxt,
              labelStyle: const TextStyle(color: Color(0xff2D3437)),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.grey[100],
      ),
      height: 80,
    );
  }
}
