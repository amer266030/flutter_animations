import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../theme_data/app_theme_cubit.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  bool isDarkMode = true;
  bool isEnglish = true;

  HomeCubit(BuildContext context) : super(HomeInitial()) {
    initialLoad(context);
  }

  initialLoad(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final savedTheme = prefs.getString('theme');
    isDarkMode = (savedTheme == ThemeMode.dark.toString());
    final savedLocale = prefs.getString('locale');
    isEnglish = (savedLocale == 'true');
    updateUI();
  }

  void toggleDarkMode(BuildContext context) {
    isDarkMode = !isDarkMode;
    final themeCubit = context.read<AppThemeCubit>();
    themeCubit.changeTheme(isDarkMode ? ThemeMode.light : ThemeMode.dark);
    updateUI();
  }

  void toggleLanguage(BuildContext context) {
    isEnglish = !isEnglish;
    context.setLocale(
        isEnglish ? const Locale('en', 'US') : const Locale('ar', 'SA'));
    _saveLocale(isEnglish);
  }

  Future<void> _saveLocale(bool isEnglish) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', isEnglish ? 'true' : 'false');
  }

  void updateUI() => emit(UpdateUIState());
}
