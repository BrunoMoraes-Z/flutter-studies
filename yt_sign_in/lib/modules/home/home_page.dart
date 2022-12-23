import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text('Initial Page'),
          SizedBox(height: 60),
          ElevatedButton(
            onPressed: () => Modular.to.navigate('/login'),
            child: Text('Proxima Tela'),
          ),
        ],
      )),
    );
  }
}
