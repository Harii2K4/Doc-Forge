import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:resume_builder_app/screens/build_options_page.dart';
import 'package:resume_builder_app/screens/options/HomePage.dart';
import 'package:resume_builder_app/screens/options/achievement_page.dart';
import 'package:resume_builder_app/screens/options/authentication_repository.dart';
import 'package:resume_builder_app/screens/options/carrier_objective_page.dart';
import 'package:resume_builder_app/screens/options/contact_info_page.dart';
import 'package:resume_builder_app/screens/options/declaration_page.dart';
import 'package:resume_builder_app/screens/options/education_page.dart';
import 'package:resume_builder_app/screens/options/experience_page.dart';
import 'package:resume_builder_app/screens/options/interest_hobbies_page.dart';
import 'package:resume_builder_app/screens/options/personal_details_page.dart';
import 'package:resume_builder_app/screens/options/projects_page.dart';
import 'package:resume_builder_app/screens/options/reference_page.dart';
import 'package:resume_builder_app/screens/options/technical_skills_page.dart';
import 'package:resume_builder_app/screens/options/theme.dart';
import 'package:resume_builder_app/screens/options/welcome_screen.dart';
import 'package:resume_builder_app/screens/pdf_page.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then((value) => Get.put(AuthenticationRepository()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Dev Forge',
      theme: ResumeAppTheme.lightTheme,
      darkTheme: ResumeAppTheme.darkTheme ,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,


        routes: {
          "/": (context) => const WelcomeScreen(),
          'build_option_page': (context) => const Build_Options_Page(),
          'contact_info_page': (context) => const contact_info_page(),
          'carrier_objective_page': (context) => const carrier_objective_page(),
          'personal_details_page': (context) => const personal_details_page(),
          'education_page': (context) => const education_page(),
          'experience_page': (context) => const experience_page(),
          'technical_skills_page': (context) => const technical_skills_page(),
          'interest_hobbies_page': (context) => const interest_hobbies_page(),
          'projects_page': (context) => const projects_page(),
          'achievement_page': (context) => const achievement_page(),
          'reference_page': (context) => const reference_page(),
          'declaration_page': (context) => const declaration_page(),
          'pdf_page': (context) => PDF_Page(),
        }


    );
  }
}











