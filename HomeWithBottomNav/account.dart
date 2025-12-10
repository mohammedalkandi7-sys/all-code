import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(radius: 42, child: Icon(Icons.person, size: 42)),
            SizedBox(height: 12),
            Text('اسم المستخدم', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.logout),
              label: Text('تسجيل خروج'),
          )
          ],
        ),
      ),
    );
  }
}


