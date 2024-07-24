import 'package:api_fetch_bloc/application/core/service/theme_service.dart';
import 'package:api_fetch_bloc/application/core/theme/theme.dart';
import 'package:api_fetch_bloc/application/features/posts/post_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeServiceProvider>(
      builder: (context, themeService, child) {
        return MaterialApp(
          title: "Demo bloc",
          debugShowCheckedModeBanner: false,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const PostWrapper(),
        );
      },
    );
  }
}
