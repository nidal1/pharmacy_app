import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/ButtonFilled.dart';
import 'package:pharmacy_app/commons/logo_image.dart';
import 'package:pharmacy_app/commons/phone_input.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoImage(),
              const SizedBox(
                height: 37,
              ),
              TextBodyMedium(
                textAlign: TextAlign.center,
                text:
                    "We will send a one time SMS message.\n Carrier rates may apply.",
                preferredStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              const PhoneInput(),
              const SizedBox(
                height: 37,
              ),
              ButtonFilled(
                text: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, '/OTP');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
