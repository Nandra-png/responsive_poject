import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Layout'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Item $index'),
            ),
          );
        },
      ),
    );
  }
}
