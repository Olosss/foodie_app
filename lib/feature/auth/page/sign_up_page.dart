import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/sign_up_notifier.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          const SizedBox(height: 48,),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: "Email",
            ),
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              labelText: "Password",
            ),
          ),
          const SizedBox(height: 48,),
          ElevatedButton(
            onPressed: () => _onSignUpTap(ref),
            child: const Text(
              "Sign Up",
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _onSignUpTap(WidgetRef ref) {
    ref
        .read(signUpNotifierProvider.notifier)
        .signUp(email: emailController.text, password: passwordController.text);
  }
}