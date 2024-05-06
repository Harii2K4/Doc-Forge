

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:resume_builder_app/main.dart';
import 'HomePage.dart';

import 'welcome_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'signup_email_password_failure.dart';



class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();


  final _auth =FirebaseAuth.instance;
  late final  Rx<User?> firebaseUser ;

  @override

  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen (User? user){
    user == null ? Get.offAll(()=> const WelcomeScreen()) : Get.offAll(()=> const HomePage());
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(()=> const HomePage()): Get.offAll(()=> const WelcomeScreen());

    } on FirebaseAuthException catch(e){
      final ex =SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message} ');
      throw ex;
    } catch(_){
      final ex =SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message} ');
      throw ex;
    }

  }

  Future<void> logout() async => await _auth.signOut();

}

