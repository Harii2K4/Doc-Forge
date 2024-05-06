

import 'dart:ffi';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../firebase_options.dart';

import 'user_model.dart';
import 'authentication_repository.dart';
import 'user_repository.dart';

import 'otp_screen.dart';

/*final userRepo = Get.put(UserRepository());*/

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();
final isLoading = false.obs;
final isGoogleLoading = false.obs;
final isFacebookLoading = false.obs;
  final email= TextEditingController();
  final password= TextEditingController();
  final fullName= TextEditingController();
  final phoneNo= TextEditingController();

  void registerUser(String email ,String password) {
    AuthenticationRepository.instance.createUserWithEmailAndPassword(
        email, password);
  }
    /*String? error = AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password) as String?;
    if(error != null){
      Get.showSnackbar(GetSnackBar(message: error.toString()));
    }
  }*/

  /*Future<void> createUser(UserModel user) async {

    Get.to(()=> const OTPScreen());
  }*/
  /*void phoneAuthentication(String phoneNo){
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }*/
  /*Future<void> googleSignIn() async {

    try {

      isGoogleLoading.value = true;
      await AuthenticationRepository.instance.signInWithGoogle();
      isGoogleLoading.value = true;

    } catch (e) {

    isGoogleLoading.value = false;
    Helper.errorSnackBar(title: );

    }
  }*/
}