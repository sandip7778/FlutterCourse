import 'package:flutter/material.dart';
class CustomInput extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const CustomInput({
    required this.hintText,
    required this.icon,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white70,
        border: Border.all(color: Colors.black26,width: 2)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16,top: 8,right: 8,bottom: 8),
        child: TextField(
            decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                suffixIcon: Icon(icon),

            )
        ),
      )
    );
  }
}
