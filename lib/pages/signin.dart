import 'package:amazone_clone_ui/controllers/auth.dart';
import 'package:amazone_clone_ui/pages/login.dart';
import 'package:amazone_clone_ui/widget/mybutton.dart';
import 'package:amazone_clone_ui/widget/password.dart';
import 'package:amazone_clone_ui/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class signupPage extends StatelessWidget {
  signupPage({super.key});
  final ctrl = Get.put(Authcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              child: Center(
                  child: Text(
                'sign up',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myTextFormFeild(controller: ctrl.username, name: "username"),
                  SizedBox(
                    height: 30,
                  ),
                  myTextFormFeild(controller: ctrl.email, name: "email"),
                  SizedBox(
                    height: 30,
                  ),
                  PasswordTextFormField(
                      controller: ctrl.password,
                      onTap: () {},
                      name: "password",
                      obserText: obserText),
                  SizedBox(
                    height: 30,
                  ),
                  Obx(
                    () => Container(
                      height: 40,
                      width: double.infinity,
                      child: MyButton(
                          name: ctrl.loading.value
                              ? CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : Text(
                                  'SignUp',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                          onPressed: () {
                            ctrl.signUp();
                          },
                          color: Colors.greenAccent),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text('I  have already Account'),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => loginPage(),
                              ));
                        },
                        child: Text(
                          ' SignIn',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
