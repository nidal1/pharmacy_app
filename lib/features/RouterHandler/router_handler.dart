import 'package:flutter/material.dart';
import 'package:pharmacy_app/features/authentication/screen/login_screen.dart';
import 'package:pharmacy_app/features/authentication/screen/otp_screen.dart';
import 'package:pharmacy_app/features/main/screen/main_screen.dart';
import 'package:pharmacy_app/features/onboarding/screen/onboarding_screen.dart';
import 'package:pharmacy_app/features/splash/screen/splash_screen.dart';
import 'package:pharmacy_app/utils/theme/app_theme.dart';

class RouterHandler extends StatefulWidget {
  const RouterHandler({Key? key}) : super(key: key);

  @override
  _RouterHandlerState createState() => _RouterHandlerState();
}

class _RouterHandlerState extends State<RouterHandler> {
  bool isFirst = true;

  bool isOnboarding = false;
  bool isLogged = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.LightTheme,
      initialRoute: isFirst ? '/' : '/home',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/OTP': (context) => const OtpScreen(),
        '/home': (context) => const MainScreen(),
      },
    );
  }
}
