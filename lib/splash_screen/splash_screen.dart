import 'dart:async';
import 'package:asap_drivers_app/auth/login_screen.dart';
import 'package:asap_drivers_app/global/global.dart';
import 'package:asap_drivers_app/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(
      const Duration(
        seconds: 3,
      ),
      () async {
        if (fAuth.currentUser != null) {
          currentFirebaseUser = fAuth.currentUser;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (builder) => const MainScreen(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (builder) => const LoginScreen(),
            ),
          );
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/splash_logo.png',
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'ASAP - Driver',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
