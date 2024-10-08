import 'package:animations/home/home_cubit.dart';
import 'package:animations/home/subviews/content_view.dart';
import 'package:animations/home/subviews/toggle_switch_view.dart';
import 'package:animations/theme_data/extensions/theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<HomeCubit>();
        return Scaffold(
          backgroundColor: context.bg1,
          appBar: AppBar(backgroundColor: context.bg1),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: ListView(
                children: [
                  BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                      return ToggleSwitchView(cubit: cubit);
                    },
                  ),
                  const ContentView(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
