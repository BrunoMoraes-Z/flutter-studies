import 'package:flutter/material.dart';
import 'package:tabnews/screens/login/widgets/forgot_password_text.dart';
import 'package:tabnews/screens/login/widgets/full_width_text_button.dart';
import 'package:tabnews/screens/login/widgets/sign_up_text.dart';
import 'package:tabnews/screens/login/widgets/text_field_with_label.dart';
import 'package:tabnews/shared/routes.dart';
import 'package:tabnews/shared/widgets/frame.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Frame(
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            TextFieldWithLabel(
              label: 'Email',
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.emailAddress,
              onFill: (value) {},
            ),
            const SizedBox(height: 16),
            TextFieldWithLabel(
              label: 'Senha',
              obscure: true,
              textInputAction: TextInputAction.done,
              onFill: (value) {},
            ),
            const SizedBox(height: 8),
            ForgotPasswordText(
              onTap: () => routeNavigate(context, '/forgot'),
            ),
            const SizedBox(height: 32),
            FullWidthTextButton(
              label: 'Login',
              onTap: () {},
            ),
            const SizedBox(height: 64),
            SignUpText(
              onTap: () => routeNavigate(context, '/register'),
            ),
          ],
        ),
      ),
    );
  }
}
