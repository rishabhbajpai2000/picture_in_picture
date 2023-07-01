import 'package:flutter/material.dart';
import 'FloatingScreen.dart';

void main() => runApp(PictureInPicture());

class PictureInPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FloatingScreen(),
    );
  }
}
