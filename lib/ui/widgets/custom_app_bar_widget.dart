import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return AppBar(
      backgroundColor: colorScheme.primary,
      title: Text(
        title,
        style: theme.appBarTheme.titleTextStyle ?? TextStyle(color: colorScheme.onPrimary),
      ),
      iconTheme: theme.appBarTheme.iconTheme ?? IconThemeData(color: colorScheme.onPrimary),
      actionsIconTheme: theme.appBarTheme.iconTheme ?? IconThemeData(color: colorScheme.onPrimary),
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'login');
          },
          color: colorScheme.onPrimary,
        ),
      ],
      elevation: theme.appBarTheme.elevation ?? 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
