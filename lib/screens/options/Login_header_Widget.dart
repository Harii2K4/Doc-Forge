import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/tect_strings.dart';
import 'login_form_widget.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Image(
        image: AssetImage(welcomeScreenImage),
        height: size.height * 0.2,
      ),

        Text(loginTitle, style: Theme.of(context).textTheme.headlineSmall),
        Text(loginSubTitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}