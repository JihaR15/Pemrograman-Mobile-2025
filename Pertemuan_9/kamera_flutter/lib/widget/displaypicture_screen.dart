import 'dart:io';
import 'package:flutter/material.dart';
import '../widget/filter_carousel.dart';

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;
  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview Photo')),
      body: Center(
        child: Image.file(File(imagePath)),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhotoFilterCarousel(imagePath: imagePath),
            ),
          );
        },
        label: const Text("Apply Filter"),
        icon: const Icon(Icons.filter),
      ),
    );
  }
}
