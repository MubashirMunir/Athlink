import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.lengthError,
    required this.validateError,
    required Function() click,
    this.icon,
    required this.iconClik,
    required this.type,
    required this.obsecure,
  }) : super(key: key);
  final TextEditingController controller;
  final TextInputType type;
  final String hintText;
  final String validateError;
  final String? lengthError;

  final bool obsecure;
  final IconData? icon;
  final VoidCallback iconClik;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofillHints: Characters('email'),
        autocorrect: true,
        obscureText: obsecure,
        key: key,
        keyboardType: type,
        controller: controller,
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: const BorderSide(
                color: Color(0x1F3F91B3),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: const BorderSide(
                color: Color(0x1F3F91B3),
              )),
          border: InputBorder.none,
          suffixIcon: IconButton(
            onPressed: iconClik,
            icon: Icon(
              icon,
              size: 15,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(
              color: Color(0x1F3F91B3), // Same visible color for focused error
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
              borderSide: const BorderSide(
                color: Color(0x1F3F91B3),
              )),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, color: Colors.black26),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return validateError;
          } else if (value.length < 6) {
            return lengthError;
          }
          return null;
        });
  }
}
