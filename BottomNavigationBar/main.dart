import 'package:flutter/material.dart';

// 1. الدالة الرئيسية (Entrypoint)
void main() {
  // تشغيل التطبيق بالواجهة الرئيسية
  runApp(const BottomNavApp());
}

// 2. الكلاس الرئيسي للتطبيق
class BottomNavApp extends StatelessWidget {
  const BottomNavApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Exam',
      theme: ThemeData(primarySwatch: Colors.teal),
      // عرض شاشة التنقل التي تحل السؤال الثاني
      home: const NavigationScreen(),
    );
  }
}

// 3. كلاس الشاشة التي تحتوي على BottomNavigationBar
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  // المتغير الذي يتتبع العنصر المحدد حالياً
  int _selectedIndex = 0;

  // قائمة بالصفحات الثلاث المطلوبة
  static const List<Widget> _widgetOptions = <Widget>[
    // الصفحة الأولى: الرئيسية
    Center(
      child: Text(
        'الصفحة الأولى: الرئيسية',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.teal),
      ),
    ),
    // الصفحة الثانية: الإعدادات
    Center(
      child: Text(
        'الصفحة الثانية: الإعدادات',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.green),
      ),
    ),
    // الصفحة الثالثة: الملف الشخصي
    Center(
      child: Text(
        'الصفحة الثالثة: الملف الشخصي',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo),
      ),
    ),
  ];

  // دالة تُستدعى لتغيير الصفحة عند النقر على أيقونة
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('السؤال الثاني: BottomNavigationBar')),

      // عرض الصفحة المحددة حالياً في جسم التطبيق
      body: _widgetOptions.elementAt(_selectedIndex),

      // شريط التنقل السفلي (BottomNavigationBar)
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // العنصر الأول
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          // العنصر الثاني
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'إعدادات',
          ),
          // العنصر الثالث
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'ملف شخصي',
          ),
        ],
        // تحديد الأيقونة النشطة
        currentIndex: _selectedIndex,
        // لون الأيقونة المختارة
        selectedItemColor: Colors.amber[800],
        // الدالة التي يتم استدعاؤها عند النقر
        onTap: _onItemTapped,
      ),
    );
  }
}