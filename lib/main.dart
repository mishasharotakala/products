import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:products/app_theme.dart';
import 'package:products/home.dart';

void main() async{
  // 1
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // 2
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: Create theme
    final theme = AppTheme.dark();

    // ignore: todo
    // TODO: Apply Home widget

    // 3
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: todo
      // TODO: Add theme
      theme: theme,
      title: 'Products',
      home: const Home(),

    );
  }
}