import 'package:chat_gpt/core/helper/theme_helper.dart';
import 'package:chat_gpt/core/resuource/app_images.dart';
import 'package:chat_gpt/core/untils/routes/route_name.dart';
import 'package:chat_gpt/page/splash/bloc/splash_bloc.dart';
import 'package:chat_gpt/page/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../di/injection.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<SplashBloc>(),
      child: Builder(
        builder: (nestedContext) {
          return BlocListener<SplashBloc, SplashState>(
            bloc: nestedContext.read<SplashBloc>()..checkStatus(),
            listener: (context, currentState) {
              if(currentState is SplashLoggedIn){
                context.goNamed(RouteName.homePage);
              }
            },
            child: Scaffold(
              backgroundColor: ThemeHelper.colorBackground(context),
              body: Center(
                child: SvgPicture.asset(AppImages.logo),
              ),
            ),
          );
        },
      ),
    );
  }
}
