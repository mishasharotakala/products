import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:products/auth/auth_page.dart';
import 'package:products/screens/home_page.dart';
import 'package:products/screens/login_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if(snapshot.hasData) {
            return const HomePage();
          }
          else {
            return AuthPage();
          }
        }),
    ),
    );
  }
}