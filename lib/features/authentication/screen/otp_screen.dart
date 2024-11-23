import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/ButtonFilled.dart';
import 'package:pharmacy_app/commons/logo_image.dart';
import 'package:pharmacy_app/commons/otp_input.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

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
                    "Submit the 4 digit code you got on your\n provided number.",
                preferredStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              const OtpInput(),
              const SizedBox(
                height: 37,
              ),
              ButtonFilled(
                text: 'Next',
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/home');
                },
              ),
              const SizedBox(
                height: 37,
              ),
              TextBodyMedium(
                text: "Didn't receive an OTP? Resend",
                preferredStyle: TextStyle(
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
