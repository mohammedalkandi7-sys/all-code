import 'package:flutter/material.dart';


class Search extends StatelessWidget {
  const Search({super.key});

  
  final List<String> items = const [
       'البحث', 
       'البحث',
       'البحث',
       'البحث',
       'البحث',
       'البحث',

  ];

  @override
  Widget build(BuildContext context) {
   
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
       
        return ListTile(
         
          title: Text(
            items[index],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
         
          subtitle: Text('بلوفر شتوي رجالي${index + 1}'),
          
          
          leading: const Icon(Icons.search, color: Colors.blueGrey),
          
          trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
          
          
          onTap: () {
            
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('تم تحديد: ${items[index]}')),
            );
          },
        );
      },
    );
  }
}