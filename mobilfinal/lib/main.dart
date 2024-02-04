import 'package:flutter/material.dart';
import 'package:flutter_application_test/home_screen/home_screen.dart';
import 'package:flutter_application_test/login_screen/login_screen.dart';
import 'package:flutter_application_test/signup_screen/signup_screen.dart';
import 'package:flutter_application_test/splash_screen/splash_screen.dart';
import 'package:flutter_application_test/screens/contact_us.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobil Final',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 138, 142, 41)),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        routes: {
          '/home': (context) => HomeScreen(),
          '/login': (context) => Login(),
          '/signup': (context) => Signup(),
          '/contactus': (context) => ContactUsScreen(),
        });
  }
}
