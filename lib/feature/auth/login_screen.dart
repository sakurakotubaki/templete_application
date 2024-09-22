import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:templete_application/feature/widgets/base_button.dart';
import 'package:templete_application/feature/widgets/text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: SuccessButton(onPressed: () => context.go('/home'), child: AppText.regular(text: 'Login', color: Colors.black, fontSize: 18, textAlign: TextAlign.center)),
      ),
    );
  }
}