import 'package:flutter/material.dart';

// 1. الدالة الرئيسية (Entrypoint)
void main() {
  // تشغيل التطبيق بالواجهة الرئيسية
  runApp(const ListTileApp());
}

// 2. الكلاس الرئيسي للتطبيق
class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile Exam - Modified',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      // عرض شاشة الـ ListTile
      home: const ModifiedListTileScreen(),
    );
  }
}

// 3. كلاس شاشة الـ ListView و ListTile (المعدل)
class ModifiedListTileScreen extends StatelessWidget {
  const ModifiedListTileScreen({super.key});

  // نموذج البيانات لتمثيل كل عنصر في القائمة (3 عناصر)
  // تم تغيير الأيقونات لتكون نفس أيقونات السؤال الثاني:
  final List<Map<String, dynamic>> items = const [
    {
      // أيقونة: الرئيسية (Icons.home)
      'icon': Icons.home,
      'title': 'الرئيسية',
      'subtitle': 'الصفحة الرئيسية للتطبيق',
      'action_text': '',
    },
    {
      // أيقونة: الإعدادات (Icons.settings)
      'icon': Icons.settings,
      'title': 'الإعدادات',
      'subtitle': 'تعديل تفضيلات المستخدم',
      'action_text': '',
    },
    {
      // أيقونة: الملف الشخصي (Icons.person)
      'icon': Icons.person,
      'title': 'الملف الشخصي',
      'subtitle': 'بيانات حسابك الشخصي',
      'action_text': '',
    },
  ];

  // دالة تُستدعى عند النقر لطباعة التفاصيل في الـ Console
  void _onItemTapped(Map<String, dynamic> item) {
    print('--- تم النقر على العنصر ---');
    print('الأيقونة (Trailing): ${item['icon']}');
    print('النص الرئيسي (Title): ${item['title']}');
    print('النص الفرعي (Subtitle): ${item['subtitle']}');
    print('الإجرائية (Leading - Action Text): ${item['action_text']}');
    print('---------------------------');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' ترتيب معكوس وأيقونات موحدة')),

      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(

            // 1. الأيقونة في اليمين (نقلت إلى trailing):
            trailing: Icon(item['icon'] as IconData, color: Colors.deepPurple),

            // 2. الإجرائية في اليسار (نقلت إلى leading) لطباعة المحتوى:
            leading: Text(
              item['action_text'] as String,
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
            ),

            // النص الرئيسي
            title: Text(item['title'] as String),

            // النص الفرعي
            subtitle: Text(item['subtitle'] as String),

            // عند النقر يتم استدعاء الدالة وطباعة المحتويات
            onTap: () => _onItemTapped(item),
          );
        },
      ),
    );
  }
}