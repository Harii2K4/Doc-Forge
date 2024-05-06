
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/tect_strings.dart';
import 'Login_footer_Widget.dart';
import 'Login_header_Widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginHeaderWidget(size: size),

                const LoginForm(),
                Login_footter_Widget()

              ],
            ),
          ),
        ),
      ),
    );
  }
}





