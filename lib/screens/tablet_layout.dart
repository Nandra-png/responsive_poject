import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tablet Layout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
            8.0), // Menambahkan padding di sekeliling GridView
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // Menggunakan 3 kolom
            childAspectRatio: 0.75, // Mengubah rasio tinggi dan lebar
            crossAxisSpacing: 8.0, // Jarak antar kolom
            mainAxisSpacing: 8.0, // Jarak antar baris
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text('Item $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
