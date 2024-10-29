import 'package:flutter/material.dart';
import 'package:flutter_material_theme/Theme/theme.dart';
import 'package:flutter_material_theme/ThemeProvider/theme_provider.dart';
import 'package:flutter_material_theme/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context,notifier,child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            darkTheme: ThemeData(
              colorScheme: MaterialTheme.darkScheme(),
              useMaterial3: true,
            ),

            theme: ThemeData(
              colorScheme: MaterialTheme.lightScheme(),

              useMaterial3: true,
            ),
             themeMode: notifier.isDark? ThemeMode.dark : ThemeMode.light,
            home: const Home(),
          );
        }
      ),
    );
  }
}

