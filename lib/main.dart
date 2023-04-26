import 'dart:async';

import 'package:chat_gpt/bloc/theme/theme_bloc.dart';
import 'package:chat_gpt/page/application.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/untils/localization_util.dart';
import 'di/injection.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await registerDependencies();
      await EasyLocalization.ensureInitialized();
      runApp(MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ThemeBloc>(),
          )
        ],
        child: EasyLocalization(
          child: const Application(),
          supportedLocales: LocalizationUtil.supportedLocales,
          path: 'assets/translations',
          fallbackLocale: LocalizationUtil.defaultLocale,
        ),
      ));
    },
    (_, __) {},
  );
}
