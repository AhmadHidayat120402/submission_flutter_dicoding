import 'package:flutter/material.dart';
import 'package:fruits_aps/main_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Aplikasi Buah",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: AnimatedSplashScreen(
          splash: Column(
            children: [
              Expanded(child: Image.asset('assets/images/logo.jpg')),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Fruits",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Staatliches'),
                  ),
                  Text(
                    " Apps",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Staatliches',
                        color: Colors.amber),
                  ),
                ],
              )
            ],
          ),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.white,
          nextScreen: const MainScreen(),
          splashIconSize: 250,
          duration: 1500,
        ));
  }
}
