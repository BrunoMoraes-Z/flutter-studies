import 'package:flutter/material.dart';
import 'package:flutter_injections/flutter_injections.dart';
import 'package:injections/modules/home/home_controller.dart';
import 'package:injections/modules/home/home_page.dart';
import 'package:injections/modules/home/home_repository.dart';
import 'package:injections/shared/http/http_client.dart';

class HomeInjections extends StatelessWidget {
  const HomeInjections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterInjections(
      injections: [
        Inject<HomeRepository>((i) => HomeRepository(i.find<HttpClient>())),
        Inject<HomeController>((i) => HomeController(i.find<HomeRepository>())),
      ],
      child: const HomePage(),
    );
  }
}
