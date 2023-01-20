import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:tabnews/repositories/auth_repository.dart';
import 'package:tabnews/screens/forgot_account/forgot_screen.dart';
import 'package:tabnews/screens/home/home_screen.dart';
import 'package:tabnews/screens/login/login_screen.dart';
import 'package:tabnews/screens/register_account/register_screen.dart';
import 'package:tabnews/services/auth_service.dart';
import 'package:tabnews/shared/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

final authService = AuthService(AuthRepository());
const _defaultRoute = '/';

final _routes = [
  GoRoute(
    path: '/',
    pageBuilder: (context, state) => customTransition(
      const HomeScreen(),
    ),
  ),
  GoRoute(
    path: '/login',
    pageBuilder: (context, state) => customTransition(
      const LoginScreen(),
    ),
  ),
  GoRoute(
    path: '/forgot',
    pageBuilder: (context, state) => customTransition(
      const ForgotScreen(),
    ),
  ),
  GoRoute(
    path: '/register',
    pageBuilder: (context, state) => customTransition(
      const RegisterScreen(),
    ),
  ),
];

final routes = GoRouter(
  initialLocation: '/login',
  refreshListenable: authService,
  routes: _routes,
  redirect: (context, state) {
    final isAuthenticaded = authService.authenticaded;
    final inLoginRoute =
        ['/login', '/forgot', '/register'].contains(state.subloc);

    if (!isAuthenticaded) return inLoginRoute ? null : '/login';
    if (inLoginRoute) return _defaultRoute;
    return null;
  },
);

void routeNavigate(BuildContext context, String path) {
  if (_routes.any((route) => route.path == path)) {
    context.push(path);
  }
}

Future<void> launch(String url) async {
  await launchUrl(Uri.parse(url));
}
