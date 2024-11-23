import 'package:flutter/material.dart';
import 'package:pharmacy_app/commons/ButtonFilled.dart';
import 'package:pharmacy_app/commons/text_body_medium.dart';
import 'package:pharmacy_app/constants/image_strings.dart';
import 'package:pharmacy_app/features/onboarding/components/onboarding_bloc.dart';
import 'package:pharmacy_app/features/onboarding/components/thumbs.dart';
import 'package:pharmacy_app/features/onboarding/models/onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List pages = [
    Onboarding(
      onboardingImage: onboarding_img,
      onboardingTitle: 'Find pharmacy near you',
      onboardingSubtitle:
          'It\'s easy to find pharmacy that is near to your location. With just one tap.',
    ),
    Onboarding(
      onboardingImage: onboarding_img,
      onboardingTitle: 'Search with our database',
      onboardingSubtitle:
          'It\'s easy to find pharmacy that is near to your location. With just one tap.',
    ),
    Onboarding(
      onboardingImage: onboarding_img,
      onboardingTitle: 'Get delivery on your door',
      onboardingSubtitle:
          'It\'s easy to find pharmacy that is near to your location. With just one tap.',
    )
  ];

  int activeDot = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, top: 61),
        child: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 600,
              ),
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    activeDot = value;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) => OnboardingBloc(
                  onboarding: pages[index],
                ),
              ),
            ),
            Thumbs(
              numberOfDots: 3,
              activeDotIndex: activeDot,
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonFilled(
                  text: "Get Started",
                  onPressed: () {
                    _navigateToLoginScreen(context);
                  },
                ),
                TextButton(
                    onPressed: () {
                      _navigateToLoginScreen(context);
                    },
                    child: TextBodyMedium(
                      text: "Skip",
                      preferredStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onTertiary),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }
}
