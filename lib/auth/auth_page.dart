import 'package:flutter/material.dart';
import 'package:products/screens/login_screen.dart';
import 'package:products/screens/signup_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // initially, show the login page
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        showSignUpPage: toggleScreens,
      );
    } else {
      return SignUpPage(showLoginPage: toggleScreens);
    }
  }
}