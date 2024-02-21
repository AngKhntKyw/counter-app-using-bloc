import 'dart:convert';
import 'package:counter_app/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:hydrated_bloc/hydrated_bloc.dart';
part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(isDarkMode: true));

  void updateAppTheme() {
    final Brightness currentBrightness = AppTheme.getSystemBrightness;
    currentBrightness == Brightness.light
        ? setTheme(ThemeMode.light)
        : setTheme(ThemeMode.dark);
  }

  void setTheme(ThemeMode themeMode) {
    AppTheme.setStatusBarAndNavigationBarColor(themeMode);
    emit(ThemeState(isDarkMode: themeMode == ThemeMode.dark ? true : false));
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    log("theme reload");
    return ThemeState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    log("theme save");
    return state.toMap();
  }
}
