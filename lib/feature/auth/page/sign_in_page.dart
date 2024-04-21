import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/sign_in_notifier.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
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
          ElevatedButton(
            onPressed: () => _onSignInTap(ref),
            child: const Text(
              "Sign In",
            ),
          ),
          ElevatedButton(
            onPressed: () => _onSignInWithGoogleTap(ref),
            child: const Text(
              "Sign In With Google",
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

  void _onSignInTap(WidgetRef ref) {
    ref
        .read(signInNotifierProvider.notifier)
        .signIn(email: emailController.text, password: passwordController.text);
  }

  void _onSignInWithGoogleTap(WidgetRef ref) {
    ref.read(signInNotifierProvider.notifier).signInWithGoogle();
  }
}
