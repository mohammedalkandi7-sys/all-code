import 'package:flutter/material.dart';

void main() {
  runApp(const TestFinalApp());
}

class TestFinalApp extends StatelessWidget {
  const TestFinalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Final',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ScrollingScreen(),
    );
  }
}

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. SingleChildScrollView للتمرير العمودي (Default)
    return Scaffold(
      appBar: AppBar(title: const Text('السؤال الأول: SingleChildScrollView')),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text('محتوى عمودي 1', style: TextStyle(fontSize: 20)),
            // 2. SingleChildScrollView nested للتمرير الأفقي
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // تفعيل التمرير الأفقي
              child: Row(
                children: List.generate(
                  10, // إنشاء 10 نصوص أفقية
                      (index) => Container(
                    width: 150,
                    height: 50,
                    margin: const EdgeInsets.all(8),
                    color: Colors.lightGreen[100 * (index % 9)],
                    child: Center(child: Text('أفقي $index')),
                  ),
                ),
              ),
            ),
            // 3. نصوص عمودية إضافية للتأكد من التمرير العمودي
            ...List.generate(
              30, // إنشاء 30 نصاً عمودياً
                  (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text('السطر العمودي رقم ${index + 1}', style: const TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}