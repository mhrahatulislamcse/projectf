import 'dart:async';
import 'package:flutter/material.dart';
import 'package:projectf/features/splash/presentation/pages/onboarding_Page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingPage()),
              (route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // FlutterLogo এর পরিবর্তে Image.asset ব্যবহার করা হয়েছে
            Image.asset(
              'assets/logos/splash-logo.png', // আপনার লোগোর পাথ
              width: 200, // প্রয়োজনমতো সাইজ সেট করুন
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(), // লোগোর নিচে লোডিং বার (ঐচ্ছিক)
          ],
        ),
      ),
    );
  }
}