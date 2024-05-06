
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resume_builder_app/main.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/tect_strings.dart';
import 'HomePage.dart';
import 'forget_password_btn_widget_dart.dart';
import 'forget_password_model_bootem_sheet.dart';
class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: formHeight - 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: email,
                hintText: email,
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: formHeight - 20.0),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: password,
                hintText: password,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: formHeight - 20.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text(forgetPassword),
              ),
            ),
            SizedBox(
                width: double.infinity,
               child: ElevatedButton(
                    onPressed: ()=> Get.to(()=> const HomePage()), child: Text(login.toUpperCase()))
            )
          ],
        ),
      ),
    );
  }
}



