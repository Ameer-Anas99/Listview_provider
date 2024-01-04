import 'package:flutter/material.dart';

class ViewImagePge extends StatelessWidget {
  final String imageUrl;

  const ViewImagePge({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Detail'),
      ),
      body: Center(
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
