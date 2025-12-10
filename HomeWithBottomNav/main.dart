import 'package:flutter/material.dart';
import 'screens/account.dart';
import 'screens/home.dart';
import 'screens/search.dart';
import 'screens/settings.dart';
// main.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'متجر بلوفرات' ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeWithBottomNav(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeWithBottomNav extends StatefulWidget {
  @override
  _HomeWithBottomNavState createState() => _HomeWithBottomNavState();
}

class _HomeWithBottomNavState extends State<HomeWithBottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Search(),
    Setting(),
    Account(),
  ];

  final List<String> _titles = [
    'الرئيسية',
    'البحث',
    'الإعدادات',
    'الحساب',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: true,
      ),
       
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,  
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'بحث',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'إعدادات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'حساب',
          ),
        ],
      ),
    );
  }
}

