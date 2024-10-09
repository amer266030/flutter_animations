import 'package:animations/home/home_cubit.dart';
import 'package:animations/home/subviews/content_view.dart';
import 'package:animations/home/subviews/language_switch_view.dart';
import 'package:animations/home/subviews/toggle_switch_view.dart';
import 'package:animations/theme_data/extensions/theme_ext.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(context),
      child: Builder(builder: (context) {
        final cubit = context.read<HomeCubit>();
        return Scaffold(
          backgroundColor: context.bg1,
          appBar: AppBar(
              backgroundColor: context.bg2,
              title: Text("homeTitle").tr(),
              centerTitle: true),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView(
                  children: [
                    BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            ToggleSwitchView(cubit: cubit),
                            LanguageSwitchView(cubit: cubit),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    const ContentView(),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
