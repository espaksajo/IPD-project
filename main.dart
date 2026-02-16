import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/theme/app_theme.dart';
import 'providers/theme_provider.dart';
import 'features/auth/login_screen.dart';

void main() {
  runApp(const OratorAI());
}

class OratorAI extends StatelessWidget {
  const OratorAI({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, theme, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme.isDark
                ? AppTheme.darkTheme
                : AppTheme.lightTheme,
            home: LoginScreen(),
          );
        },
      ),
    );
  }
}
