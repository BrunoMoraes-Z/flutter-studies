import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tabnews/screens/login/widgets/full_width_text_button.dart';
import 'package:tabnews/screens/login/widgets/text_field_with_label.dart';
import 'package:tabnews/shared/widgets/frame.dart';
import 'package:tabnews/shared/widgets/left_back_arrow_navigation.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Frame(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            LeftBackArrowNavigation(
              onTap: () => context.pop(),
            ),
            const SizedBox(height: 24),
            const Text(
              'Cadastro',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            TextFieldWithLabel(
              label: 'Nome de usuário',
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.name,
              onFill: (value) {},
            ),
            const SizedBox(height: 16),
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
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.name,
              onFill: (value) {},
            ),
            const SizedBox(height: 16),
            TextFieldWithLabel(
              label: 'Confirmar Senha',
              obscure: true,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.name,
              onFill: (value) {},
            ),
            const SizedBox(height: 32),
            FullWidthTextButton(
              label: 'Criar cadastro',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
