// OWNER: Person 1
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();
    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Dark Mode'),
          secondary: const Icon(Icons.dark_mode),
          value: theme.isDark,
          onChanged: (v) => context.read<ThemeProvider>().toggle(v),
        ),
      ],
    );
  }
}
