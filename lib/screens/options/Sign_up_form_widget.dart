import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resume_builder_app/constants/colors.dart';
import 'Sign_Up_Controller.dart';
import 'otp_screen.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/tect_strings.dart';

import 'user_model.dart';



class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});



  @override
  Widget build(BuildContext context) {
    final controller =Get.put(SignUpController());
    final _formKey =GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: formHeight-10),
      child: Form(
        key:_formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
             controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(fullName),
                border:OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_outline_rounded,color:secondaryColor),
              ),
            ),
            const SizedBox(height: formHeight-20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                  label: Text(email),
                  prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
            const SizedBox(height: formHeight-20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                  label: Text(phoneNo),
                  prefixIcon: Icon(Icons.numbers)
              ),
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                  label: Text(password),
                  prefixIcon: Icon(Icons.password)
              ),
            ),
            const SizedBox(height: formHeight-20),
            SizedBox(
              width: double.infinity,
              child:
              ElevatedButton(
                onPressed: (){
               /* if(_formKey.currentState!.validate()){
                    SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                    }*/

                  Get.to(()=> const OTPScreen());
                  },
                 child: Text(signup.toUpperCase()),

              ),
            )
          ],
        ),
      ),
    );
  }
}
