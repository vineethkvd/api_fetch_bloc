import 'package:api_fetch_bloc/application/core/service/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeServiceProvider(),
      child: MyApp(),
    ),
  );
}
