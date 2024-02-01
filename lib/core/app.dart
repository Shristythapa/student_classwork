import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_hive_api/config/router/app_route.dart';
import 'package:student_management_hive_api/config/themes/app_theme.dart';

class App extends ConsumerWidget {
  
  final token;
  const App({required this.token, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student App',
      theme: AppTheme.getApplicationTheme(isDark: false),
      initialRoute: AppRoute.loginRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
