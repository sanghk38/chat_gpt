import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'theme_state.dart';

class ThemeBloc extends Cubit<ThemeState> {
  ThemeBloc() : super(ThemeState());

  ThemeMode _mode = ThemeMode.light;
  bool get isDarkMode => _mode == ThemeMode.dark;
  void toggleMode() {
    _mode = _mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    emit(ThemeState(mode: _mode));
  }
}
