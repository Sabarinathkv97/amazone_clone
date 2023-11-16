import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget name;
  final Color color;
  MyButton({required this.name, required this.onPressed, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        child: name,
        onPressed: onPressed,
      ),
    );
  }
}
