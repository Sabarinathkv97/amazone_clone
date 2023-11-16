import 'package:flutter/material.dart';

class badge extends StatefulWidget {
  const badge({super.key});

  @override
  State<badge> createState() => _badgeState();
}

class _badgeState extends State<badge> {
  @override
  Widget build(BuildContext context) {
    return Badge(
      label: Text('0'),
      backgroundColor: Colors.redAccent,
      child: Icon(Icons.shopping_bag),
    );
  }
}
