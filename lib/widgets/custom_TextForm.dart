import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData? icon;
  final String? hintText;
  final String? labelText;
  final bool obscureText;

  const CustomTextFormField({
    Key? key,
    this.icon,
    this.hintText,
    this.labelText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        hintText: hintText,
        labelText: labelText,
        hintStyle: const TextStyle(color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
      ),
      obscureText: obscureText,
    );
  }
}
