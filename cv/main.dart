import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('My CV'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
  
              CircleAvatar(
                radius: 60,
                backgroundColor: const Color.fromARGB(255, 179, 103, 234),
                child: Icon(Icons.person, size: 70, color: Colors.white),
              ),
              SizedBox(height: 16),

             
              Text(
                'Aya mohamed',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(221, 187, 47, 177),
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),

              SizedBox(height: 20),

              Card(
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text('aya@gmail.com'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.blue),
                  title: Text('+967 77712999'),
                ),
              ),

              SizedBox(height: 20),

              sectionTitle('المؤهلات العلمية'),
              infoText('بكالوريوس تقنيه معلومات - جامعة سيؤن(2024)'),

              SizedBox(height: 20),

              sectionTitle('الخبرات العملية'),
              infoText('تدريب في تطوير تطبيقات الموبايل '),
              infoText('عملت على مشروع متجر إلكتروني مصغّر'),

              SizedBox(height: 20),

              sectionTitle('المهارات '),
              infoText('• الرسم'),
              infoText('•البرمجه وتطوير التطبيقات  '),
              
              SizedBox(height: 30),
              Text(
                'تم التصميم بواسطة Flutter 💙',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
  Widget sectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue[700],
        ),
      ),
    );
  }


  Widget infoText(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ),
    );
  }
}