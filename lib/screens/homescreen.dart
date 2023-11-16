import 'package:amazone_clone_ui/widget/gridviewproduct.dart';
import 'package:amazone_clone_ui/widget/mainadd.dart';
import 'package:amazone_clone_ui/widget/offerlist.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          mainAdd(), offerListView(), //
          productGridView()
        ],
      ),
    );
  }
}
