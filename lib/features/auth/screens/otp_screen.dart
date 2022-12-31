import 'package:flutter/material.dart';

class OPTScreen extends StatefulWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;
  const OPTScreen({super.key, required this.verificationId});

  @override
  State<OPTScreen> createState() => _OPTScreenState();
}

class _OPTScreenState extends State<OPTScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
