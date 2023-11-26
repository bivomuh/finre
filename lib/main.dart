import 'package:Finre/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finre - Financial Record App by Bivo Muhandeza',
      theme: ThemeData(
        fontFamily: 'Satoshi',
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF007AFF)),
        useMaterial3: true,
      ),
      home: MainPage(myMoney: 400),
    );
  }
}
