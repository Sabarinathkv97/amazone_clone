import 'package:amazone_clone_ui/pages/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(
  //options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.orange,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    debugShowCheckedModeBanner: false,
    home: mainPage(),
  ));
}
