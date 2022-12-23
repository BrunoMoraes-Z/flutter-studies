import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('Pagina Login'),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () => Modular.to.navigate('/'),
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
