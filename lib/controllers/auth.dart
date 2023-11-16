import 'package:amazone_clone_ui/models/user.dart';
import 'package:amazone_clone_ui/pages/mainpage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Authcontroller extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController loginemail = TextEditingController();
  TextEditingController loginpassword = TextEditingController();
  TextEditingController username = TextEditingController();

  var loading = false.obs;
  var hasData = false.obs;
  signUp() async {
    try {
      loading.value = true;

      await auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      await addUser();
      Get.offAll(() => mainPage());
      hasData.value = true;
      loading.value = false;
    } catch (e) {
      Get.snackbar('error', '$e');
      loading.value = false;
    }
  }

  addUser() async {
    UserModel user =
        UserModel(userName: username.text, email: auth.currentUser?.email);
    await db
        .collection('user')
        .doc(auth.currentUser?.uid)
        .collection('profile')
        .add(user.toMap());
  }

  signOut() async {
    await auth.signOut();
  }

  signIn() async {
    try {
      loading.value = true;
      await auth.signInWithEmailAndPassword(
          email: loginemail.text, password: loginpassword.text);
      Get.offAll(() => mainPage());
      hasData.value = true;
      loading.value = false;
    } catch (e) {
      Get.snackbar("error", '$e');
      loading.value = false;
    }
  }
}
