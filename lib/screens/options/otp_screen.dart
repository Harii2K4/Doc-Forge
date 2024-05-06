import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder_app/constants/sizes.dart';
import 'package:resume_builder_app/constants/tect_strings.dart';
import 'HomePage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class OTPScreen extends StatelessWidget{
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.all(defaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(otpTitle,
                  style:GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 80.0,
                  )),
              Text(otpSubTitle.toUpperCase(),style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 40.0,),
              Text(otpMessage+"",textAlign: TextAlign.center,),
              const SizedBox(height: 40.0,),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                keyboardType:TextInputType.number ,
                onSubmit: (code){print("OTP IS => $code");},
              ),
              const SizedBox(height: 20.0,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: ()=> Get.to(()=> const HomePage()), child: const Text(next)))

            ],
          ),
        )
    );
  }

}
