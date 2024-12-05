import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แยกขยะด้วยสัญลักษณ์'),
      ),
      body: const Center(
        child: Text(
          'หน้าสำหรับแยกขยะด้วยสัญลักษณ์',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
