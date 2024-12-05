import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
