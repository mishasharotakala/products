import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              // Hello Again
              SizedBox(height: 20,),
              Text(
                "Hello Again !",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: "VeganStylePersonalUse",
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: "BeautifulPeoplePersonalUse",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}