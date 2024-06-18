import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/sign_in_notifier.dart';
import 'package:foodie_app/feature/auth/notifier/state/sign_in_state.dart';
import 'package:foodie_app/router/routes.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final emailController = TextEditingController(text: "olosss96+3@tlen.pl");
  final passwordController = TextEditingController(text: "Test1234");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
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
          ElevatedButton(
            onPressed: () => _onSignUpTap(context),
            child: const Text(
              "Sign Up",
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState(){
    super.initState();
    ref.listenManual(signInNotifierProvider, (SignInState? previous,SignInState next) {
      if(previous is SignInStateLoading && next is SignInStateDone){
        context.push(const RoomsRoute().location);
      }
    });
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

  void _onSignUpTap(BuildContext context){
    context.push(const SignUpRoute().location);
  }
}
