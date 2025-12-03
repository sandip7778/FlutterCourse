import 'package:flutter/material.dart';
class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const InputField({
    required this.hintText,
    required this.icon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return  TextField(
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            suffixIcon: Icon(icon)
        )
    );
  }
}
