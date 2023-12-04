import 'package:flutter/material.dart';
import 'package:quran_memorization_app/pages/home_page.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuranHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}