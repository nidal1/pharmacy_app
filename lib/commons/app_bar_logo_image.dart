import 'package:flutter/material.dart';
import 'package:pharmacy_app/constants/image_strings.dart';

class AppBarLogoImage extends StatelessWidget {
  const AppBarLogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(logo_app_bar);
  }
}
