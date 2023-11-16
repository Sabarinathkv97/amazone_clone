import 'package:flutter/material.dart';

class catogoryPage extends StatelessWidget {
  const catogoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [Text(index.toString())],
                ));
          },
        ),
      ),
    );
  }
}
