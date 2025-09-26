import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name;
  final String phoneNumber;

  const MyCard({super.key, required this.name, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person, color: Colors.brown, size: 40),
        title: Text(
          name,
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(phoneNumber),
        trailing: Icon(Icons.call, color: Colors.blue),
      ),
    );
  }
}
