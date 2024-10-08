import 'package:animations/theme_data/extensions/text_style_ext.dart';
import 'package:animations/theme_data/extensions/theme_ext.dart';
import 'package:flutter/material.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Card(
              color: context.bg2,
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Title 1', style: context.titleSmall),
                    Text('Title 2', style: context.titleMedium),
                    Text('Title 3', style: context.titleLarge),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: Card(
              color: context.bg2,
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Small Body', style: context.bodySmallStyle),
                    Text('Medium Body', style: context.bodyMediumStyle),
                    Text('Large Body', style: context.bodyLargeStyle),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
