import 'package:flutter/material.dart';

class ShoeImage extends StatelessWidget {
  final String pathImage;
  const ShoeImage({Key? key, required this.pathImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(pathImage);
  }
}
