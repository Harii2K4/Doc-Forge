import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:resume_builder_app/constants/sizes.dart';
import 'package:resume_builder_app/constants/tect_strings.dart';
import 'otp_screen.dart';

import '../../../../../constants/image_strings.dart';

class ForgetPasswordMailScreen extends StatelessWidget{
  const  ForgetPasswordMailScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return
      SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child:Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                children: [
                  SizedBox(height: defaultSize * 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(welcomeScreenImage),
                        height: size.height * 0.2,
                      ),
                      Text(forgetPassword, style: Theme.of(context).textTheme.headlineSmall),
                      Text(forgetPasswordSubTitle, textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                  SizedBox(height: formHeight,),
                  Form(
                    child:
                    Column(
                      children:[
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(email),
                            hintText: email,
                            prefixIcon: Icon(Icons.mail_outline_rounded),
                          ),
                        ),
                        SizedBox(height: 20,),
                        SizedBox(width: double.infinity ,child: ElevatedButton(onPressed: (){
                          Get.to(() => OTPScreen());
                        }, child: Text(next))),
                      ],

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}