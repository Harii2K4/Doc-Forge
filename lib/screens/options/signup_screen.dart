import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resume_builder_app/constants/image_strings.dart';
import 'package:resume_builder_app/constants/sizes.dart';
import 'package:resume_builder_app/constants/tect_strings.dart';

import 'form_header_widget.dart';
import 'Sign_up_form_widget.dart';
import 'login_page.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
              padding: const  EdgeInsets.all(defaultSize),
              child: Column(
                children: [
                  FolderHeaderWidget(image: welcomeScreenImage,title: signUpTitle,subTitle: signUpSubTitle,),
                  SignUpFormWidget(),
                  Column(
                    children: [
                      const Text("Or"),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Image(
                            image: AssetImage(googleLogoImage),
                            width: 20.0,
                          ),
                          label:  Text(signInWithGoogle.toUpperCase()),
                        ),
                      ),
                      TextButton(

                        child: Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(text: alreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyMedium),
                                  TextSpan(text:login.toUpperCase())
                                ]
                            )
                        ),
                        onPressed: ()=> Get.to(()=> const LoginScreen()),
                      )
                    ],
                  )
                ],
              ),
            )
        ),
      ),
    );
  }
}

