import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/tect_strings.dart';
import 'signup_screen.dart';
class Login_footter_Widget extends StatelessWidget {
  const Login_footter_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          const Text("OR"),
          const SizedBox(height: formHeight-20),
          SizedBox(
              width:double.infinity,
              child: OutlinedButton.icon(icon:Image(image: AssetImage(googleLogoImage),width:20.0),onPressed: (){}, label:Text(signInWithGoogle))),
          const SizedBox(height: formHeight-20),
          TextButton(onPressed: ()=> Get.to(()=> const SignUpScreen(),), child: Text.rich(
              TextSpan(
                  text:dontHaveAnAccount,
                  style:Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(text: signup, style:TextStyle(color:Colors.blue),)
                  ]
              )
          )),
        ]
    );
  }
}