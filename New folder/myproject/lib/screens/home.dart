import 'package:flutter/material.dart';
import 'package:myproject/screens/page1.dart';
import 'package:myproject/screens/page2.dart';
import 'package:myproject/screens/page3.dart';
import 'package:myproject/screens/page4.dart';
import 'package:myproject/screens/page5.dart';
import 'package:myproject/screens/page6.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FocusNode _focusNode = FocusNode(); // FocusNode สำหรับช่องค้นหา

  @override
  void dispose() {
    _focusNode.dispose(); // ทำลาย FocusNode เมื่อไม่ใช้งาน
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // เมื่อกดที่อื่นในหน้าจอ จะ unfocus ช่องค้นหา
        _focusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            focusNode: _focusNode, // กำหนด focusNode ให้กับช่องค้นหา
            decoration: InputDecoration(
              hintText: 'ช่องค้นหา',
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
              ),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.location_on,
                  size: 30,
                  color: Colors.green,
                ),
                onPressed: () {
                  // กำหนดการทำงานของปุ่ม Location
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/images/recycling.png',
                  height: 200,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    _buildButton(
                        context, 'แยกขยะ\nด้วยสัญลักษณ์', const Page1()),
                    _buildButton(context, 'วิธีการคัดแยก', const Page2()),
                    _buildButton(context, 'ส่งต่อ', const Page3()),
                    _buildButton(context, 'สีของถังขยะ', const Page4()),
                    _buildButton(context, 'วัสดุรีไซเคิล', const Page5()),
                    _buildButton(context, 'ผู้รับใกล้ฉัน', const Page6()),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String label, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
