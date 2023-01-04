import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/features/auth/controller/auth_controller.dart';

import '../../../widgets/colors.dart';

class OPTScreen extends ConsumerWidget {
  static const String routeName = '/otp-screen';
  final String verificationId;
  const OPTScreen({super.key, required this.verificationId});

  void verifyOTP(WidgetRef ref, BuildContext context, String userOTP) {
    ref
        .read(authControllerProvider)
        .verifyOTP(context, verificationId, userOTP);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text('We have sent an SMS with a code.'),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: size.width * 0.5,
                child: TextField(
                  decoration: const InputDecoration(
                      hintText: '- - - - - -',
                      hintStyle: TextStyle(
                        fontSize: 30,
                      )),
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    if (val.length == 6) {
                      verifyOTP(ref, context, val.trim());
                      print('verifying otp');
                    }
                    print('function has run');
                  },
                )),
          ],
        ),
      ),
    );
  }
}
