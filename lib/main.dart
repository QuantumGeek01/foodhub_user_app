import 'package:flutter/material.dart';
import 'HomePage/home_page.dart';
import 'splash_screen.dart';

Future<void>main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner:false,
        title: 'Diu Food-Hub Seller app',
        home: HomeScreen()
    );
  }
}

