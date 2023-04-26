import 'package:get_it/get_it.dart';

import '../bloc/session/session_bloc.dart';
import '../bloc/tab_bloc/tab_bloc.dart';
import '../bloc/theme/theme_bloc.dart';
import '../core/app_router.dart';
import '../core/helper/event_bus.dart';
import '../core/local_storage/shared_prefs.dart';
import '../page/splash/bloc/splash_bloc.dart';

final GetIt getIt = GetIt.instance;

Future<void> registerDependencies() async {
  getIt.registerSingletonAsync(() => SharedPrefs().init());
  getIt.registerSingleton(() => AppRouter());
  getIt.registerSingleton<EventBus>(EventBus());
  _registerRepositories();
  _registerBlocs();
}

void _registerRepositories() {}

void _registerBlocs() {
  getIt.registerFactory(
    () => ThemeBloc(),
  );
  getIt.registerFactory(() => SplashBloc());
  getIt.registerFactory(() => TabBloc());
  getIt.registerFactory(() => SessionBloc());


}
