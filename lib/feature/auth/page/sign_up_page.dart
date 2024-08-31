import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodie_app/core/auth/domain/exception/email_already_in_use_exception.dart';
import 'package:foodie_app/feature/auth/notifier/sign_up_notifier.dart';
import 'package:foodie_app/feature/auth/notifier/state/sign_up_state.dart';
import 'package:foodie_app/feature/common/widget/button/gradient_button.dart';
import 'package:foodie_app/feature/common/widget/input/email_input.dart';
import 'package:foodie_app/feature/common/widget/input/password_input.dart';
import 'package:foodie_app/feature/common/widget/text_divider_row.dart';
import 'package:foodie_app/router/routes.dart';
import 'package:foodie_app/styles/styles.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    ref.listenManual(signUpNotifierProvider,
        (SignUpState? previous, SignUpState next) {
      if (previous is SignUpStateLoading && next is SignUpStateDone) {
        context.go(const RoomsRoute().location);
      } else if (previous is SignUpStateLoading && next is SignUpStateError) {
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

  void _onSignUpTap(WidgetRef ref) {
    _removeErrorMessage();

    if (!_formKey.currentState!.validate()) {
      return;
    }

    ref.read(signUpNotifierProvider.notifier).signUp(
          email: _emailController.text,
          password: _passwordController.text,
        );
  }

  void _wrapAndShowErrorMessage(Object error) {
    if (error is EmailAlreadyInUseException) {
      _errorMessage = 'There was a problem with the registration.';
    } else {
      _errorMessage = 'Unknown Error';
    }

    if (!mounted) {
      return;
    }
    setState(() {});
  }

  void _removeErrorMessage() {
    if (!mounted) {
      return;
    }
    setState(() {
      _errorMessage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final SignUpState state = ref.watch(signUpNotifierProvider);

    return Scaffold(
      body: Padding(
        padding: Paddings.paddingMedium(),
        child: Column(
          children: <Widget>[
            Spacers.verticalDoubleExtraLarge(),
            Image.asset(
              Assets.logo,
            ),
            Spacers.verticalDoubleExtraLarge(),
            const TextDividerRow(
              text: 'Sign Up',
            ),
            Spacers.verticalExtraLarge(),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  EmailInput(
                    controller: _emailController,
                  ),
                  Spacers.verticalLarge(),
                  PasswordInput(
                    controller: _passwordController,
                    lengthPasswordRequirementConditions: true,
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
              label: 'Sign Up',
              onTap: () => _onSignUpTap(ref),
              isLoading: state is SignUpStateLoading,
            ),
          ],
        ),
      ),
    );
  }
}
