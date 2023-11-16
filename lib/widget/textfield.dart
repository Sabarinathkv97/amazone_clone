import 'package:flutter/material.dart';

class myTextFormFeild extends StatelessWidget {
  final TextEditingController controller;
  final String name;
  const myTextFormFeild({required this.controller, required this.name});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: name,
        ));
  }
}
