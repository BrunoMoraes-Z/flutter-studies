import 'package:flutter/material.dart';
import 'package:flutter_injections/flutter_injections.dart';
import 'package:injections/modules/home/home_injections.dart';
import 'package:injections/shared/http/http_client.dart';
import 'package:injections/shared/http/impl/dio_http_client_impl.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterInjections(
      injections: [
        Inject<HttpClient>((i) => DioHttpClientImpl("https://catfact.ninja/")),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeInjections(),
      ),
    );
  }
}
