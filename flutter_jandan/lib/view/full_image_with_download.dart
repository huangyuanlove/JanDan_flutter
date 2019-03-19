import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ViewImage extends StatelessWidget {
  final String imageUri;
  ViewImage(this.imageUri);

  @override
  Widget build(BuildContext context) {
  return  Scaffold(
      body: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: imageUri),
    );
  }
}