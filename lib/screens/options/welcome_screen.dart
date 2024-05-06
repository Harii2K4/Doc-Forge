import 'package:flutter/material.dart';
import 'package:resume_builder_app/constants/sizes.dart';
import 'package:resume_builder_app/constants/tect_strings.dart';
import 'package:get/get.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import 'login_page.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery =MediaQuery.of(context);
    var h=mediaQuery.size.height;
    var brightness =mediaQuery.platformBrightness;
    final isDarkMode=brightness ==Brightness.dark;
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(defaultSize),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Image(image: AssetImage(welcomeScreenImage),height:size.height * 0.6),
                  Column(
                      children:[
                        Text(welcomeTitle,style: Theme.of(context).textTheme.headlineSmall,),
                        Text(welcomeSubTitle,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,),
                      ]
                  ),
                  Row(
                      children: [
                        Expanded(child:
                        OutlinedButton(
                            onPressed: ()=> Get.to(()=> const LoginScreen()),

                            child: Text(login.toUpperCase()))),
                        const SizedBox(width: 10.0,),
                        Expanded(child:
                        ElevatedButton(onPressed: ()=> Get.to(()=> const SignUpScreen()), child: Text(signup.toUpperCase()),


                        ),)
                      ]
                  )

                ]
            )
        )
    );
    throw UnimplementedError();
  }
}