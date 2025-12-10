import 'package:flutter/material.dart';


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: [
        SwitchListTile(
          title: Text('الإشعارات'),
          subtitle: Text('تشغيل أو إيقاف الإشعارات'),
          value: true,
          onChanged: (v) { /* مثال فقط */ },
        ),
        ListTile(
          leading: Icon(Icons.palette),
          title: Text('تغيير المظهر'),
          subtitle: Text('فاتح / داكن'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('عن التطبيق'),
          onTap: () {},
        ),
      ],
    );
  }
}