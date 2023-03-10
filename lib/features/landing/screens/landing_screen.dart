import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/features/auth/screens/login_screen.dart';
import 'package:whatsapp_clone/router.dart';
import 'package:whatsapp_clone/widgets/colors.dart';

class LandingScreen extends StatelessWidget {
  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Welcome to Whatsapp',
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: size.height / 9,
          ),
          Image.asset(
            'assets/bg.png',
            height: 340,
            width: 340,
            color: tabColor,
          ),
          SizedBox(
            height: size.height / 9,
          ),
          const Text(
            'Read our Privacy Policy. Tap "Agree and continue" to access the terms of Service.',
            style: TextStyle(color: greyColor),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width * 0.75,
            child: CustomButton(
                text: 'AGREE AND CONTINUE',
                onPressed: (() =>  navigateToLoginScreen(context) ))
          ),
        ],
      )),
    );
  }
}
