import 'package:flutter/material.dart';
class ElevatedWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color color;

  const ElevatedWidget({
    required this.onPressed,
    required this.title,
    required this.color,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Container(
            width: double.infinity,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text(title,style: TextStyle(fontSize: 18,color: Colors.white),)),
            )
        )
    );
  }
}
