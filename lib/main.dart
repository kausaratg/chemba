import 'package:flutter/material.dart';
import 'package:stage0/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:RegisterPage()
    );
  }
}