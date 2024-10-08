import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme_data/app_theme_cubit.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  bool isDarkMode = false;

  void toggleDarkMode(BuildContext context, bool value) {
    isDarkMode = value;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final themeCubit = context.read<AppThemeCubit>();
      themeCubit.changeTheme(isDarkMode ? ThemeMode.light : ThemeMode.dark);
    });

    emit(UpdateUIState());
  }

  void updateUI() => emit(UpdateUIState());
}
