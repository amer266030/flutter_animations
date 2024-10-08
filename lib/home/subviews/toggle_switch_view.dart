import 'package:animations/home/home_cubit.dart';
import 'package:animations/theme_data/extensions/theme_ext.dart';
import 'package:flutter/material.dart';

class ToggleSwitchView extends StatelessWidget {
  const ToggleSwitchView({super.key, required this.cubit});
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Card(
        color: context.bg2,
        elevation: 4,
        shadowColor: context.textColor3.withOpacity(0.5),
        child: SwitchListTile(
          title: Text(cubit.isDarkMode ? 'Dark' : 'Light'),
          activeColor: context.accent,
          inactiveThumbColor: context.accent,
          trackColor: WidgetStateProperty.all(context.bg1),
          trackOutlineColor: WidgetStateProperty.all(context.bg2),
          value: cubit.isDarkMode,
          onChanged: (bool value) => cubit.toggleDarkMode(context, value),
          secondary: Icon(
            cubit.isDarkMode ? Icons.dark_mode : Icons.sunny,
            size: 24,
            color: context.accent,
          ),
        ),
      ),
    );
  }
}
