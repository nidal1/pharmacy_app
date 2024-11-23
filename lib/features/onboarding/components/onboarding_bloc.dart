import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';
import 'package:pharmacy_app/commons/text_heading_large.dart';
import 'package:pharmacy_app/constants/image_strings.dart';
import 'package:pharmacy_app/features/onboarding/models/onboarding.dart';

class OnboardingBloc extends StatelessWidget {
  final Onboarding onboarding;

  const OnboardingBloc({
    super.key,
    required this.onboarding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(onboarding.onboardingImage),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          width: 284,
          child: Column(
            children: [
              TextHeadingLarge(text: onboarding.onboardingTitle),
              const SizedBox(
                height: 36,
              ),
              TextBodyMedium(
                text: onboarding.onboardingSubtitle,
                preferredStyle: TextStyle(
                    height: 1.5,
                    color: Theme.of(context).colorScheme.onTertiary),
              ),
              const SizedBox(
                height: 36,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
