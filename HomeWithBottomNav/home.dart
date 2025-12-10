
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {

  final TextEditingController _inputController = TextEditingController();

  final TextEditingController _outputController = TextEditingController();

  void _transferText() {

    setState(() {

      _outputController.text = _inputController.text;
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    _outputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          TextField(
            controller: _inputController,
            decoration: const InputDecoration(
              labelText: 'الاسم الأول: أدخل النص هنا',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),

          ElevatedButton(
            onPressed: _transferText,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(12),
              backgroundColor: const Color.fromARGB(255, 221, 120, 209),
            ),
            child: const Text(
              'اطبع قيمة الحقل الأول في الثاني',
              style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 187, 47, 143)),
            ),
          ),
          const SizedBox(height: 16),
    TextField(
            controller: _outputController,
            readOnly: true,
            decoration: const InputDecoration(
              labelText:'الاسم الثاني :',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
