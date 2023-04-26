import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/theme/theme_bloc.dart';

class ThemeHelper {
  static Color colorBackground(BuildContext context) {
    return context.read<ThemeBloc>().isDarkMode
        ? _DarkTheme.colorBackground
        : _LightTheme.colorBackground;
  }
}

class _LightTheme {
  static const Color colorBackground = Color(0xFF4AA181);
}

class _DarkTheme {
  static const Color colorBackground = Color(0xFF4AA181);
}
