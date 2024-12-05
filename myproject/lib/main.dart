import 'package:flutter/material.dart';
import 'package:myproject/screens/home.dart'; // Import หน้า home.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ซ่อนแถบ Debug
      home: const Home(), // เรียกหน้า Home เป็นหน้าแรก
    );
  }
}
