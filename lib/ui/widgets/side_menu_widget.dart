import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: colorScheme.primary,
            ),
            child: Text(
              'Menu',
              style: theme.textTheme.headlineSmall?.copyWith(
                color: colorScheme.onPrimary,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: colorScheme.onSurface),
            title: Text('Home', style: theme.textTheme.bodyLarge),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: colorScheme.onSurface),
            title: Text('Sair', style: theme.textTheme.bodyLarge),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'login');
            },
          ),
        ],
      ),
    );
  }
}
