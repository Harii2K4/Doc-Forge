import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/tect_strings.dart';
import 'forget_password_mail.dart';
import 'forget_password_btn_widget_dart.dart';
class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        builder: (context) => Container(
            padding: const EdgeInsets.all(defaultSize),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
                    Text(forgetPasswordSubTitle,style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: 30.0),
                    ForgetPasswordBtnWidget(
                      btnIcon: Icons.mail_outline_rounded,
                      title: email,
                      subTitle: resetViaEMail,
                      onTap: (){
                        Navigator.pop(context);

                        Get.to(()=> ForgetPasswordMailScreen());},
                    ),
                    const SizedBox(height: 20.0),
                    ForgetPasswordBtnWidget(
                      btnIcon: Icons.mobile_friendly_rounded,
                      title: phoneNo,
                      subTitle: resetViaPhone,
                      onTap: (){},
                    ),



                  ]
              ),
            )
        )
    );
  }





}
