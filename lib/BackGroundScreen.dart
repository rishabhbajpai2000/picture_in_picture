import 'package:flutter/material.dart';
import 'package:picture_in_picture/FloatingScreen.dart';

class BackgroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      title: Text('Background Screen'),
    ));
  }
}
