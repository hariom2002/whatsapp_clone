import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/widgets/error.dart';
import 'package:whatsapp_clone/features/auth/screens/otp_screen.dart';
import 'package:whatsapp_clone/features/auth/screens/user_information_screen.dart';
import '';
import 'features/auth/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OPTScreen.routeName:
      final String verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OPTScreen(
          verificationId: verificationId,
        ),
      );
    case UserInformationScreen.routeName:
      final String verificationId = settings.arguments.toString();
      return MaterialPageRoute(
        builder: (context) => const UserInformationScreen(),
      );

    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: ErrorScreen(error: 'This page dosen\'t exist'),
              ));
  }
}
