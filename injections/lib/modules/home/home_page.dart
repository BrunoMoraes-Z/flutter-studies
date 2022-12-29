import 'package:flutter/material.dart';
import 'package:flutter_injections/flutter_injections.dart';
import 'package:injections/modules/home/home_controller.dart';
import 'package:injections/shared/watch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var controller = FlutterInjections.get<HomeController>();

    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(8),
                child: Watch(
                  listenable: controller,
                  child: () {
                    var fact = controller.fact;
                    if (fact.isEmpty && controller.error.isEmpty) {
                      return const Center(
                        child: SizedBox(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    var message = fact.isEmpty ? controller.error : fact;
                    return Text(
                      message,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 64),
          ElevatedButton(
            onPressed: () {
              controller.getFact();
            },
            child: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }
}
