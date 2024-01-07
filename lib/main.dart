import 'package:flutter/material.dart';
import 'package:onlynews/pages/userinput.dart';
import 'package:onlynews/theme_provider.dart';
import 'package:provider/provider.dart';

import 'firstpage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: firstpage(),
        ),
      ),
    );
  }
}
