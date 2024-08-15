import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/feature/auth/notifier/sign_in_notifier.dart';
import 'package:foodie_app/feature/auth/notifier/state/sign_in_state.dart';
import 'package:foodie_app/feature/auth/widget/do_not_have_an_account.dart';
import 'package:foodie_app/feature/auth/widget/fade_entry_animation.dart';
import 'package:foodie_app/feature/auth/widget/forgot_password.dart';
import 'package:foodie_app/feature/common/widget/button/gradient_button.dart';
import 'package:foodie_app/feature/common/widget/button/outlined_custom_button.dart';
import 'package:foodie_app/feature/common/widget/input/password_input.dart';
import 'package:foodie_app/feature/common/widget/input/text_input.dart';
import 'package:foodie_app/feature/common/widget/text_divider_row.dart';
import 'package:foodie_app/router/routes.dart';
import 'package:foodie_app/styles/styles.dart';
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
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: Paddings.paddingMedium(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: -80,
                    left: 0,
                    right: 0,
                    height: 350,
                    child: FadeEntryAnimation(),
                  ),
                  Column(
                    children: [
                      Spacers.verticalDoubleExtraLarge(),
                      Image.asset(
                        Assets.logo,
                      ),
                      Spacers.verticalDoubleExtraLarge(),
                      TextDividerRow(
                        text: "Sign In",
                      ),
                      Spacers.verticalUltraSmall(),
                      Text(
                        "Welcome to Foodie!",
                        style: theme.textTheme.headlineSmall,
                      ),
                      Spacers.verticalExtraLarge(),
                      TextInput(
                        label: 'Email',
                        iconData: Icons.email_outlined,
                        hintText: 'Enter your email',
                      ),
                      Spacers.verticalLarge(),
                      PasswordInput(),
                      Spacers.verticalMedium(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ForgotPassword(),
                      ),
                      Spacers.verticalExtraLarge(),
                      GradientButton(
                        label: 'Sign in',
                        onTap: () => _onSignInTap(ref),
                      ),
                      Spacers.verticalExtraLarge(),
                      TextDividerRow(
                        text: "or",
                        style: theme.inputDecorationTheme.labelStyle,
                      ),
                      Spacers.verticalLarge(),
                      OutlinedCustomButton(
                        label: 'Sign in with Google',
                        onTap: () => _onSignInWithGoogleTap(ref),
                        image: Image.asset(Assets.google),
                      ),
                      Spacers.verticalSmall(),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: DoNotHaveAnAccount(
                            onTap: () => _onSignUpTap(context),
                          ),
                        ),
                      ),
                      Spacers.verticalLarge(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    ref.listenManual(signInNotifierProvider, (
      SignInState? previous,
      SignInState next,
    ) {
      if (previous is SignInStateLoading && next is SignInStateDone) {
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

  void _onSignUpTap(BuildContext context) {
    context.push(const SignUpRoute().location);
  }
}
