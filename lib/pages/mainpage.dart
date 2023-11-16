import 'package:amazone_clone_ui/controllers/page.dart';
import 'package:amazone_clone_ui/screens/category.dart';
import 'package:amazone_clone_ui/screens/homescreen.dart';
import 'package:amazone_clone_ui/screens/profile.dart';
import 'package:amazone_clone_ui/screens/serch.dart';
import 'package:amazone_clone_ui/widget/badge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

// ignore: must_be_immutable
class mainPage extends StatelessWidget {
  mainPage({super.key});
  final pagecontroller = Get.put(pageControllers());
  List pages = const [homePage(), searchPage(), catogoryPage(), profilePage()];
  List pageName = ['HOME PAGE', 'SEARCH PRODUCTS', 'CATEGORYS', 'PROFILE'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
          title: Obx(() => Text(pageName[pagecontroller.index.value])),
          actions: const [
            Center(child: badge()),
            SizedBox(
              width: 15,
            )
          ]),
      body: Obx(() => pages[pagecontroller.index.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: pagecontroller.index.value,
            onTap: pagecontroller.pageIndex,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category_rounded,
                  ),
                  label: 'Category'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'Profile')
            ]),
      ),
    );
  }
}
