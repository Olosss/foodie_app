import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/auth/domain/exception/invalid_creadential_exception.dart';
import 'package:foodie_app/core/auth/domain/exception/login_attempt_limit_exceeded.dart';
import 'package:foodie_app/feature/auth/notifier/sign_in_notifier.dart';
import 'package:foodie_app/feature/auth/notifier/state/sign_in_state.dart';
import 'package:foodie_app/feature/auth/widget/do_not_have_an_account.dart';
import 'package:foodie_app/feature/auth/widget/fade_entry_animation.dart';
import 'package:foodie_app/feature/common/widget/button/gradient_button.dart';
import 'package:foodie_app/feature/common/widget/button/outlined_custom_button.dart';
import 'package:foodie_app/feature/common/widget/input/email_input.dart';
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
  final _emailController = TextEditingController(text: "olosss96+3@tlen.pl");
  final _passwordController = TextEditingController(text: "Test1234");
  final _formKey = GlobalKey<FormState>();
  String? _errorMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final state = ref.watch(signInNotifierProvider);

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
                  const Positioned(
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
                      const TextDividerRow(
                        text: "Sign In",
                      ),
                      Spacers.verticalUltraSmall(),
                      Text(
                        "Welcome to Foodie!",
                        style: theme.textTheme.headlineSmall,
                      ),
                      Spacers.verticalExtraLarge(),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            EmailInput(
                              controller: _emailController,
                            ),
                            Spacers.verticalLarge(),
                            PasswordInput(
                              controller: _passwordController,
                            ),
                          ],
                        ),
                      ),
                      Spacers.verticalLarge(),
                      _errorMessage != null
                          ? Text(
                              _errorMessage!,
                              style: theme.inputDecorationTheme.errorStyle,
                            )
                          : const SizedBox.shrink(),
                      Spacers.verticalLarge(),
                      GradientButton(
                        label: 'Sign In',
                        onTap: () => _onSignInTap(ref),
                        isLoading: state is SignInStateLoading,
                      ),
                      Spacers.verticalExtraLarge(),
                      TextDividerRow(
                        text: "or",
                        style: theme.inputDecorationTheme.labelStyle,
                      ),
                      Spacers.verticalExtraLarge(),
                      OutlinedCustomButton(
                        label: 'Sign In with Google',
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
        context.go(const RoomsRoute().location);
      }else if (previous is SignInStateLoading && next is SignInStateError) {
        _wrapAndShowErrorMessage(next.error);
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onSignInTap(WidgetRef ref) {
    _removeErrorMessage();
    if (!_formKey.currentState!.validate()) {
      return;
    }

    ref.read(signInNotifierProvider.notifier).signIn(
          email: _emailController.text,
          password: _passwordController.text,
        );
  }

  void _onSignInWithGoogleTap(WidgetRef ref) {
    _removeErrorMessage();
    ref
        .read(
          signInNotifierProvider.notifier,
        )
        .signInWithGoogle();
  }

  void _onSignUpTap(BuildContext context) {
    context.push(
      const SignUpRoute().location,
    );
  }

  void _wrapAndShowErrorMessage(Object error){
    if(error is InvalidCredentialException){
      _errorMessage = "Incorrect email or password.";
    }else if(error is LoginAttemptLimitExceeded){
      _errorMessage = "Login attempt limit exceeded, please try again later.";
    }else{
      _errorMessage = "Unknown Error";
    }

    if(!mounted){
      return;
    }
    setState(() {});
  }

  void _removeErrorMessage(){
    if(!mounted){
      return;
    }
    setState(() {
      _errorMessage = null;
    });
  }
}
