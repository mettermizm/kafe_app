import 'package:flutter/material.dart';
import 'package:kafe_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kahve App',
      theme: ThemeData.light(),
      home: const HomePage(),
    );
  }
}
