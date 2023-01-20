import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabnews/shared/constants.dart';
import 'package:tabnews/shared/providers.dart';
import 'package:tabnews/shared/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp.router(
        title: 'TabNews',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: kLightTheme,
        darkTheme: kDarkTheme,
        routerDelegate: routes.routerDelegate,
        routeInformationParser: routes.routeInformationParser,
        routeInformationProvider: routes.routeInformationProvider,
      ),
    );
  }
}
