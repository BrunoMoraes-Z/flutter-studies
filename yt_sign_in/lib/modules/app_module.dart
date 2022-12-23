import 'package:flutter_modular/flutter_modular.dart';
import 'package:yt_sign_in/modules/home/home_page.dart';
import 'package:yt_sign_in/modules/login/auth_guard.dart';
import 'package:yt_sign_in/modules/login/login_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/',
            child: (context, args) => HomePage(),
            transition: TransitionType.noTransition,
            guards: [AuthGuard()]),
        ChildRoute(
          '/login',
          child: (context, args) => LoginPage(),
          transition: TransitionType.noTransition,
        ),
      ];
}
