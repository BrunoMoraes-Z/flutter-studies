import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:tabnews/services/auth_service.dart';
import 'package:tabnews/shared/routes.dart';
import 'package:tabnews/shared/storage/i_storage.dart';
import 'package:tabnews/shared/storage/shared_preference_storage.dart';

final List<SingleChildWidget> providers = [
  Provider<IStorage>(
    create: (context) => SharedPreferenceStorage(),
    lazy: true,
  ),
  ChangeNotifierProvider<AuthService>.value(
    value: authService,
  ),
];
