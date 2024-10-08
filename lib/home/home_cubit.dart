import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../theme_data/app_theme_cubit.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  bool isDarkMode = false;

  HomeCubit(BuildContext context) : super(HomeInitial()) {
    initialLoad(context);
  }

  initialLoad(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final savedTheme = prefs.getString('theme');
    isDarkMode = (savedTheme == ThemeMode.dark.toString());
    updateUI();
  }

  void toggleDarkMode(BuildContext context, bool value) {
    isDarkMode = value;
    final themeCubit = context.read<AppThemeCubit>();
    themeCubit.changeTheme(isDarkMode ? ThemeMode.light : ThemeMode.dark);
    updateUI();
  }

  void updateUI() => emit(UpdateUIState());
}
