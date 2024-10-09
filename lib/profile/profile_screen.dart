import 'package:animations/theme_data/extensions/text_style_ext.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile', style: context.titleLarge)),
      body: ListView(
        children: const [
          Row(
            children: [
              Expanded(child: ClipOval(child: Placeholder())),
              Expanded(
                  flex: 2,
                  child: ListTile(
                    title: Text('John Doe'),
                    subtitle: Text('johndoe@example.com'),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
