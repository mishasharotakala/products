import 'package:flutter/material.dart';
import 'package:products/app_theme.dart';
import 'package:products/card1.dart';
import 'package:products/card2.dart';
import 'package:products/home.dart';

void main() {
  // 1
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
      // 4
      //home: const Card2(),
      //home: const Card1(),
      home: const Home(),

      /*home: Scaffold(
        // ignore: todo
        // TODO: Style the title
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Products",
            style: theme.textTheme.headline6,
          ),
        ),
        // ignore: todo
        // TODO: Style the body text
        body: Center(
          child: Text(
            "Let's be beautiful",
            style: theme.textTheme.headline1,
          ),
        ),
      ),*/
    );
  }
}